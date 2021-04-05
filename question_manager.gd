extends Node

class_name QuestionManager

# main data to hold questions
var multiple_choice_qns : Array

export var max_questions = 10
var question_id = 0 #ensure we start asking from position 0

var question_data = {
	0: {
		"instructions" : "[center]Collect the verbs![/center]",
		"answers" : ["coded", "scare", "threw", "fished", "was", "driving"],
		"bogus_answers" : ["scary", "happiness", "ghost", "you", "best"]
	},
	1: {
		"instructions" : "[center]Collect the superlative adjectives![/center]",
		"answers" : ["biggest", "grandest", "most beautiful", "fastest", "most expensive", "scariest"],
		"bogus_answers" : ["more delicious", "slower", "greener", "runner", "builder"]
	},
}

func get_current_question_data():
	return question_data[question_id]

func get_next_question():
	if question_id + 1 >= question_data.size():
		question_id = 0
	else: 
		question_id += 1
	return get_current_question_data()
