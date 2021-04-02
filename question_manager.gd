extends Node

class_name QuestionManager

# main data to hold questions
var multiple_choice_qns : Array

export var max_questions = 10
var current_question_id = -1 #ensure we start asking from position 0

# test question pool
var test_question = "[center]Which words are verbs?[/center]"
var test_answer_pool = ["coded", "scare", "threw", "fished", "was", "driving"]
var test_bogus_pool = ["scary", "happiness", "ghost", "you", "best"]

var current_question_data = {
	"question_bbtext": test_question,
	"correct_answers": test_answer_pool,
	"bogus_answers": test_bogus_pool
}

func get_current_question_data():
	return current_question_data

func _ready():
	pass
