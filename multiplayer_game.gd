extends "game.gd"

# Multiple Choice Quiz Platformer. 
# collect the correct answer to the question at the top.
# or collect the words that match the category.
# if you collect the wrong answer, an unkillable ghost will start to follow you.
# there are enemies on the screen for you to destroy too
# game rewards player with powerups for answering correctly:
# eg. movement options, weapons, new maps!

onready var roundover_panel = $Canvas/RoundOverPanel

func _ready():
	#print(globals.data["categories"])
	pass

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
	print("Round ended.")
	round_end_scores.clear()
	rpc("communicate_score", score)

remote func communicate_score(score):
	var sender_id = get_tree().get_rpc_sender_id()
	var sender_name = Multiplayer.peer_info[sender_id].name
	round_end_scores[sender_name] = score
	if round_end_scores.size() == Multiplayer.peer_info.size():
		# show scores
		roundover_panel.show()
		for s in round_end_scores.values():
			$Canvas/RoundOverPanel/PlayerScores.add_item(str(s))


func start_game():
	if get_tree().network_peer == null:
	# create player 
		var player = player_scene.instance()
		player.position = $PlayerStartPosition.position
		player.connect("player_died", self, "_on_player_died")
		$Players.add_child(player)
	
	question_manager.get_next()
	#question_text.bbcode_text = "[center]Which [shake rate=10 level=5][color=lime]verbs[/color][/shake] are in the past tense?"
	$Timer.start()

func _on_player_died():
	$Timer.stop()
	$Canvas/GameOverPanel/ScoreLabel.text = "Your score was: " + str(score)
	gameover_panel.show()


func add_score(amount):
	score += amount
	score_label.text = "Score: " + str(score)


func _on_Timer_timeout():
	set_timeleft(time_left - 1)


func _on_StartButton_button_up():
	start_panel.hide()
	start_game()


func _on_TryAgainButton_button_up():
	gameover_panel.hide()
	reset_game()
	start_panel.show()
