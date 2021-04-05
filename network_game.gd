extends "game.gd"

# Multiplayer word collection game

onready var roundover_panel = $GameUI/RoundOverPanel
onready var map_objects = get_node("MapObjects")
onready var collectible_word_scene = preload("res://Scenes/CollectibleWord.tscn")

# generate a random seed for the game
var rng = RandomNumberGenerator.new()
var current_questions = 1
export var max_questions = 2
onready var question_rotation_timer = $QuestionRoundTimer

var player_spawn_positions = []
var item_spawn_positions = {} # [0] { spawn_node = 'node obj', occupied = bool } # Does this need to be a dictionary?

func _ready():
	if !get_tree().is_network_server():
		start_panel.hide()
	var i = 0
	for sp in $SpawnPositions.get_children():
		if "ItemSpawnPoint" in sp.name:
			item_spawn_positions[i] = sp as ItemSpawnPoint
			i += 1
		elif "PlayerSpawnPoint" in sp.name:
			player_spawn_positions.append(sp)

func _process(delta):
	time_label.text = "Time Left: " + str("%.1f" % question_rotation_timer.time_left)

func reset_game():
	.reset_game() # call base reset game
	# set up players again

# END OF ROUND ----------------------------
var round_end_scores = {}
remotesync func end_round():
	# stop all timers on each player
	question_rotation_timer.stop()
	# delete all words
	for answer in get_tree().get_nodes_in_group("answer"):
		answer.active = false
		answer.queue_free()
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
	$GameUI/RoundOverPanel/PlayerScores.add_item(Multiplayer.local_info.name + " " + str(my_score))
	for s in round_end_scores.keys():
		$GameUI/RoundOverPanel/PlayerScores.add_item(s + " " + str(round_end_scores[s]))
# -------------------------------------------

# START OF GAME -----------------------------
func preconfig_network_game():
	rpc("spawn_all_players")
	rpc("start_network_game")

# return the position of a spawn point fair to the player
func get_open_spawn_point() -> Vector2:
	return player_spawn_positions[randi() % player_spawn_positions.size()].position

# spawn ALL the players at the same time
# only the network master should be able to do this!
master func spawn_all_players():
	var selfPeerID = get_tree().get_network_unique_id()
	# Load my player
	rpc("spawn_player", selfPeerID, get_open_spawn_point())
	# Load other players
	for peer_ID in Multiplayer.peer_info:
		# make sure the spawn point is pre-chosen on the server to prevent desync or flying
		rpc("spawn_player", peer_ID, get_open_spawn_point())

# respawn a player by player info - could even be my player!
remotesync func spawn_player(peer_ID, spawn_position : Vector2):
	var player = preload("res://Scenes/NetworkPlayer.tscn").instance()
	player.set_name(str(peer_ID))
	player.set_network_master(peer_ID) # Will be explained later
	# we're spawning another player, so set their tag displayed above their head
	if peer_ID != get_tree().get_network_unique_id():
		player.set_tag(Multiplayer.peer_info[peer_ID].name)
	get_node("/root/Game/Players").add_child(player)
	player.position = spawn_position

# called from the server but run by all
remotesync func start_network_game():
	# set up player events
	
	# start the timer on each player - only the server one matters though
	question_rotation_timer.start()
	if get_tree().is_network_server():
		ask_question()

master func next_question():
	current_questions += 1
	if current_questions > max_questions:
		end_round()
	else:
		question_manager.get_next_question()
		ask_question()

master func ask_question():
	# get the question for the question manager
	var q_data = question_manager.get_current_question_data()
	rset("question_instructions", q_data["instructions"])
	question_text.bbcode_text = question_instructions
	# get the answers from the question manager
	var answers = q_data["answers"] as Array
	var bogus_answers = q_data["bogus_answers"] as Array
	# randomize answer order 
	# this is done on server, so the clients should reflect this randomization
	answers.shuffle()
	rpc("show_question_instructions")
	question_rotation_timer.start()
	for i in range(item_spawn_positions.size()):
		pre_spawn_answer()

sync var question_instructions
remotesync func show_question_instructions():
	question_text.bbcode_text = question_instructions # ---- TEST SYNCVAR

# finds an open spawnpoint node and returns it
func find_open_spawnpoint_index() -> int:
	for index in item_spawn_positions.keys():
		if !item_spawn_positions[index].has_item():
			return index
	return -1

master func pre_spawn_answer():
	if question_rotation_timer.time_left <= 2:
		# don't bother spawning, there's no time left.
		return
	# get the data
	var q_data = question_manager.get_current_question_data()
	var answers = q_data["answers"] as Array
	var bogus_answers = q_data["bogus_answers"] as Array
	
	var is_safe = true
	var answer_text = answers[randi() % answers.size()]
	# change to make it bogus
	if rng.randf() < 0.3:
		answer_text = bogus_answers[randi() % bogus_answers.size()]
		is_safe = false
	# find an open spawn point
	var ips_index = find_open_spawnpoint_index()
	if ips_index > -1:
		# spawn a collectible at the same spawn point for each player
		rpc("spawn_answer", answer_text, ips_index, is_safe)
	else:
		# we didn't get an open position, what to do here??
		print("Can't spawn '" + answer_text + "', no spawn points left.\n")

# called from the server, but runs on every machine because of remotesync
remotesync func spawn_answer(answer : String, ips_index : int, is_safe : bool):
	var new_answer = collectible_word_scene.instance()
	new_answer.text = answer
	new_answer.safe = is_safe
	new_answer.connect("expired", self, "_on_answer_expired")
	new_answer.connect("touched_answer", self, "_on_touched_answer")
	# the spawn node determines position
	item_spawn_positions[ips_index].set_item(new_answer)

# when an answer expires from the player not touching it
func _on_answer_expired(calling_answer_item):
	# only remake the answer if it was safe
	var was_safe = calling_answer_item.safe
	var expired_text = calling_answer_item.text
	# delete the item
	calling_answer_item.queue_free()
	if get_tree().is_network_server():
		# wait a bit before respawning
		yield(get_tree().create_timer(rand_range(1,3)), "timeout")
		rpc_id(1, "pre_spawn_answer")


func _on_touched_answer(calling_answer_item : CollectableAnswer, toucher):
	if calling_answer_item.safe:
		add_score(100)
	else:
		add_score(-50)
	yield(get_tree().create_timer(rand_range(3,5)), "timeout")
	# ask the server to prepare another answer to spawn
	rpc_id(1, "pre_spawn_answer")

# -------------------------------------------

func _on_player_died():
	question_rotation_timer.stop()
	$GameUI/GameOverPanel/ScoreLabel.text = "Your score was: " + str(my_score)
	gameover_panel.show()


func add_score(amount):
	my_score += amount
	score_label.text = "Score: " + str(my_score)


func _on_StartButton_button_up():
	if get_tree().is_network_server():
		start_panel.hide()
		preconfig_network_game()


func _on_TryAgainButton_button_up():
	gameover_panel.hide()
	reset_game()
	start_panel.show()


func on_question_timer_timeout():
	next_question()


func _leave_game():
	if get_tree().network_peer:
		get_tree().set_network_peer(null)
	get_node("/root/Main").reset_menus()
	print("Left the game.")
	# delete this node AFTER setting up sibling node
	queue_free()
