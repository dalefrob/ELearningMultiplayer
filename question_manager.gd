extends Node

# main screen 
onready var main_screen = get_tree().get_root().get_node("Game") 
onready var map_objects = main_screen.get_node("MapObjects")

onready var ghost_scene = preload("res://Scenes/Ghost.tscn")
onready var answer_scene = preload("res://Scenes/CollectibleWord.tscn")

# main data to hold questions
var multiple_choice_qns : Array

export var max_questions = 10
var current_question_id = -1 #ensure we start asking from position 0

# test question pool
var test_question = "[center]Which words are verbs?[/center]"
var test_answer_pool = ["run", "scare", "threw", "fished", "was", "driving"]
var test_bogus_pool = ["scary", "happiness", "ghost", "you", "best"]

# question text node
export var question_text_path : NodePath
onready var question_text = get_node(question_text_path) as RichTextLabel

# spawn positions
export(Array, NodePath) var spawn_positions
# ALTERNATIVE: var spawn_positions = get_tree().get_nodes_in_group ("spawn_position")
var item_positions = {}

func _ready():
	randomize()
	# multiple_choice_qns = globals.data["multiple_choice_questions"]
	var answers = get_tree().get_nodes_in_group("collectible")
	for i in range(answers.size()):
		answers[i].connect("touched_answer", self, "_on_touched_answer")
	
	# add spawn positions to dictionary
	for i in range(spawn_positions.size()):
		var node = get_node(spawn_positions[i])
		item_positions[node.position] = null
	
	
func get_next():
	question_text.bbcode_text = test_question
	# spawn a bunch of answers
	# 1. delete existing answers
	var existing_answers = get_tree().get_nodes_in_group ("answer")
	for a in existing_answers:
		a.queue_free()
	# 2. get amount of spawn nodes and spawn an answer on each
	for i in range(spawn_positions.size()):
		spawn_answer()
	
	# check question amount
	#if current_question_id < multiple_choice_qns.size():
	#	current_question_id += 1
	#	question_text.text = multiple_choice_qns[current_question_id]["question"]

# refactor to take in text and safeness
func spawn_answer():
	# get available position
	for key in item_positions.keys():
		if item_positions[key] == null:
			var new_answer = answer_scene.instance()
			new_answer.position = key
			item_positions[key] = new_answer
			# choose an answer
			var text_to_put = ""
			if randf() > 0.4:
				text_to_put = test_answer_pool[rand_range(0, test_answer_pool.size())]
				new_answer.safe = true
			else:
				text_to_put = test_bogus_pool[rand_range(0, test_bogus_pool.size())]
			new_answer.text = text_to_put
			new_answer.connect("touched_answer", self, "_on_touched_answer")
			new_answer.connect("expired", self, "_on_answer_expired")
			# add the child
			map_objects.add_child(new_answer)
			return

# when an answer expires from the player not touching it
func _on_answer_expired():
	yield(get_tree().create_timer(3), "timeout")
	spawn_answer()

# ontouching an answer
func _on_touched_answer(answer : CollectableAnswer):
	# release the text from the dictionary
	var index = item_positions.values().find(answer)
	var key_at_index = item_positions.keys()[index]
	item_positions[key_at_index] = null
	# act on the answer
	if answer.get_safe():
		do_correct()
	else:
		do_incorrect()
	yield(get_tree().create_timer(3), "timeout")
	spawn_answer()


func do_incorrect():
	main_screen.add_score(-50)
	# spawn a ghost
	var ghost = ghost_scene.instance()
	ghost.position = Vector2(-20,0)
	get_parent().add_child(ghost)
	get_tree().call_group("enemies", "increase_speed")


func do_correct():
	main_screen.add_score(100)
