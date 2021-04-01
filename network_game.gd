extends "game.gd"

# Multiplayer word collection game

onready var roundover_panel = $GameUI/RoundOverPanel
onready var map_objects = get_node("MapObjects")
onready var collectible_word_scene = preload("res://Scenes/CollectibleWord.tscn")

# generate a random seed for the game
var rng = RandomNumberGenerator.new()
# spawn positions for collectibles
var item_spawn_positions = []

func _ready():
	if !get_tree().is_network_server():
		start_panel.hide()
	#print(globals.data["categories"])
	for p in $SpawnPositions.get_children():
		item_spawn_positions.append(p)

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
	var pos = item_spawn_positions[rand_range(0, item_spawn_positions.size())].position
	rpc("spawn_answer", "safe word", pos, true)


# called from the server
remotesync func spawn_answer(answer, pos, is_safe):
	var new_answer = collectible_word_scene.instance()
	new_answer.position = pos
	new_answer.text = answer
	new_answer.safe = is_safe
	map_objects.add_child(new_answer)

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
