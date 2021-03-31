extends "game.gd"

# Multiple Choice Quiz Platformer. 
# collect the correct answer to the question at the top.
# or collect the words that match the category.
# if you collect the wrong answer, an unkillable ghost will start to follow you.
# there are enemies on the screen for you to destroy too
# game rewards player with powerups for answering correctly:
# eg. movement options, weapons, new maps!

onready var roundover_panel = $Canvas/RoundOverPanel
onready var map_objects = get_node("MapObjects")
onready var collectible_word_scene = preload("res://Scenes/CollectibleWord.tscn")

# generate a random seed for the game
var rng = RandomNumberGenerator.new()

func _ready():
	if !get_tree().is_network_server():
		start_panel.hide()
	#print(globals.data["categories"])

func reset_game():
	set_timeleft(5)
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

# Round end handling
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
		roundover_panel.show()
		$Canvas/RoundOverPanel/PlayerScores.add_item(Multiplayer.local_info.name + " " + str(my_score))
		for s in round_end_scores.values():
			$Canvas/RoundOverPanel/PlayerScores.add_item(sender_name + " " + str(s))

# set up the game
func preconfig_network_game():
	rpc("start_network_game")

# called from the server but run by all
remotesync func start_network_game():
	# TODO the server needs to handle the question data and collectibles 
	#question_manager.get_next()
	#question_text.bbcode_text = "[center]Which [shake rate=10 level=5][color=lime]verbs[/color][/shake] are in the past tense?"
	$Timer.start()
	spawn_answer("testamondo", Vector2(100,100))

# called from the server
func spawn_answer(answer, pos):
	var new_answer = collectible_word_scene.instance()
	new_answer.position = pos
	new_answer.text = answer
	map_objects.add_child(new_answer)

func _on_player_died():
	$Timer.stop()
	$Canvas/GameOverPanel/ScoreLabel.text = "Your score was: " + str(my_score)
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
