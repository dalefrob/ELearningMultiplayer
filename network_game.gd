extends "game.gd"

# Multiplayer word collection game

onready var roundover_panel = $GameUI/RoundOverPanel
onready var map_objects = get_node("MapObjects")
onready var collectible_word_scene = preload("res://Scenes/CollectibleWord.tscn")

# generate a random seed for the game
var rng = RandomNumberGenerator.new()

var item_spawn_positions = []
# inside the array is a tuple 
# { spawn_node = 'node obj', occupied = bool }

func _ready():
	if !get_tree().is_network_server():
		start_panel.hide()
	#print(globals.data["categories"])
	for p in $SpawnPositions.get_children():
		var dic = { "spawn_node": p, "occupied": false }
		item_spawn_positions.append(dic)

func reset_game():
	set_timeleft(10)
	# destroy existing entities
	var entities = get_tree().get_nodes_in_group("entities")
	for e in entities:
		e.queue_free()
	# create proc level?


func set_timeleft(amount):
	time_left = amount
	if time_left <= 0:
		time_left = 0
		rpc("end_round")
	time_label.text = "Time Left: " + str(time_left)

# END OF ROUND ----------------------------
var round_end_scores = {}
remotesync func end_round():
	# stop all timers on each player
	$Timer.stop()
	print("Round ended.")
	round_end_scores.clear()
	rpc("communicate_score", my_score)

remote func communicate_score(sender_score):
	var sender_id = get_tree().get_rpc_sender_id()
	var sender_name = Multiplayer.peer_info[sender_id].name
	round_end_scores[sender_name] = sender_score
	if round_end_scores.size() == Multiplayer.peer_info.size():
		# show scores
		show_scores()

func show_scores():
	roundover_panel.show()
	$Canvas/RoundOverPanel/PlayerScores.add_item(Multiplayer.local_info.name + " " + str(my_score))
	for s in round_end_scores.keys():
		$Canvas/RoundOverPanel/PlayerScores.add_item(s + " " + str(round_end_scores[s]))
# -------------------------------------------

# START OF GAME -----------------------------
func preconfig_network_game():
	rpc("spawn_players")
	rpc("start_network_game")

remotesync func spawn_players():
	var selfPeerID = get_tree().get_network_unique_id()
	# Load my player
	var my_player = preload("res://Scenes/NetworkPlayer.tscn").instance()
	my_player.set_name(str(selfPeerID))
	my_player.set_network_master(selfPeerID) # Will be explained later
	get_node("/root/Game/Players").add_child(my_player)
	my_player.position = Vector2(64,64)

	# Load other players
	for p in Multiplayer.peer_info:
		var player = preload("res://Scenes/NetworkPlayer.tscn").instance()
		player.set_name(str(p))
		player.set_network_master(p) # Will be explained later
		player.set_tag(Multiplayer.peer_info[p].name)
		get_node("/root/Game/Players").add_child(player)
		player.position = Vector2(64,64)


# called from the server but run by all
remotesync func start_network_game():
	# set up player events
	
	# start the timer on each player - only the server one matters though
	$Timer.start()
	if get_tree().is_network_server():
		ask_question()

master func ask_question():
	# get the question for the question manager
	var q_data_dictionary = question_manager.get_current_question_data()
	question_text.bbcode_text = q_data_dictionary["question_bbtext"]
	# get the answers from the question manager
	var answers = q_data_dictionary["correct_answers"] as Array
	var bogus = q_data_dictionary["bogus_answers"]
	# randomize answer order 
	# this is done on server, so the clients should reflect this randomization
	answers.shuffle()
	
	for a in answers:
		# find an open spawn point
		var spawn_node = find_open_spawnpoint()
		if spawn_node:
			# spawn a collectible at the same spawn point for each player
			rpc("spawn_answer", a, spawn_node.position, true)
		else:
			# we didn't get an open position, what to do here??
			print("Can't spawn '" + a + "', no spawn points left./n")
			pass

# finds an open spawnpoint node and returns it
func find_open_spawnpoint() -> Node:
	# shuffle so that the nodes are searched in a random order
	item_spawn_positions.shuffle() # --- MAKE SURE THIS DOESNT BREAK ANYTHING
	# iterate values in dictionary until an unoccupied node comes up
	for sp_tuple in item_spawn_positions:
		if sp_tuple["occupied"] == false:
			# we found an open position, so prepare it and break the loop
			# the server chooses a position
			var spawn_node = sp_tuple["spawn_node"]
			sp_tuple["occupied"] = true
			return spawn_node
	return null

# called from the server, but runs on every machine because of remotesync
remotesync func spawn_answer(answer, pos, is_safe):
	var new_answer = collectible_word_scene.instance()
	new_answer.position = pos
	new_answer.text = answer
	new_answer.safe = is_safe
	new_answer.connect("expired", self, "_on_answer_expired", answer)
	map_objects.add_child(new_answer)

# when an answer expires from the player not touching it
func _on_answer_expired(answer_text):
	if get_tree().is_network_server():
		yield(get_tree().create_timer(3), "timeout")
		print("Server trying to spawn a new answer after timeout.")
		var spawn_node = find_open_spawnpoint()
		rpc("spawn_answer", answer_text, spawn_node.position, true)
		

# -------------------------------------------

func _on_player_died():
	$Timer.stop()
	$GameUI/GameOverPanel/ScoreLabel.text = "Your score was: " + str(my_score)
	gameover_panel.show()


func add_score(amount):
	my_score += amount
	score_label.text = "Score: " + str(my_score)


func _on_Timer_timeout():
	set_timeleft(time_left - 1)


func _on_StartButton_button_up():
	if get_tree().is_network_server():
		start_panel.hide()
		preconfig_network_game()


func _on_TryAgainButton_button_up():
	gameover_panel.hide()
	reset_game()
	start_panel.show()


func _leave_game():
	if get_tree().network_peer:
		get_tree().set_network_peer(null)
	get_node("/root/Main").reset_menus()
	print("Left the game.")
	# delete this node AFTER setting up sibling node
	queue_free()
