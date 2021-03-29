extends Node

var data

func load_data():
	var file = File.new()
	file.open("res://data.json", file.READ)
	var json = file.get_as_text()
	data = JSON.parse(json).result
	file.close()
