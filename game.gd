extends Node2D

# Multiple Choice Quiz Platformer. 
# collect the correct answer to the question at the top.
# or collect the words that match the category.
# if you collect the wrong answer, an unkillable ghost will start to follow you.
# there are enemies on the screen for you to destroy too
# game rewards player with powerups for answering correctly:
# eg. movement options, weapons, new maps!

onready var question_manager = $QuestionManager as QuestionManager

onready var question_text = $GameUI/BottomCont/ColorRect/QuestionText
onready var score_label = $GameUI/TopCont/ScoreLabel
onready var time_label = $GameUI/TopCont/TimeLabel

onready var start_panel = $GameUI/StartPanel
onready var gameover_panel = $GameUI/GameOverPanel

signal on_leave_game

var init_time_limit = 20
var time_left = init_time_limit
var my_score := 0

onready var player_scene = preload("res://Scenes/Player.tscn")

func _ready():
	#print(globals.data["categories"])
	pass

func reset_game():
	set_timeleft(init_time_limit)
	# destroy existing entities
	var entities = get_tree().get_nodes_in_group("entities")
	for e in entities:
		e.queue_free()
	# create proc level?


func set_timeleft(amount):
	time_left = amount
	time_label.text = "Time Left: " + str(time_left)


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
	$GameUI/GameOverPanel/ScoreLabel.text = "Your score was: " + str(my_score)
	gameover_panel.show()


func add_score(amount):
	my_score += amount
	score_label.text = "Score: " + str(my_score)


func _on_Timer_timeout():
	set_timeleft(time_left - 1)


func _on_StartButton_button_up():
	start_panel.hide()
	start_game()


func _on_TryAgainButton_button_up():
	gameover_panel.hide()
	reset_game()
	start_panel.show()

func _leave_game():
	pass
