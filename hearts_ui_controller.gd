extends HBoxContainer

class_name HeartBoxContainer

onready var heart_scene = preload("res://Scenes/UI_Heart.tscn")

export var max_heart_count = 3
var heart_limit = 8

var hearts setget hearts_set, hearts_get

func hearts_set(value):
	hearts = value
	update_hearts()

func hearts_get():
	return hearts

func _ready():
	create_hearts()

# creates inital hearts for the pool
func create_hearts():
	# spawn
	for i in range(heart_limit):
		var new_heart = heart_scene.instance()
		new_heart.name = "Heart_" + str(i)
		add_child(new_heart)

func get_curr_heart_count():
	return get_child_count()

func get_hearts(amount, increase = false):
	# increase to total hearts for player
	if increase:
			max_heart_count += amount
			# but don't go beyond the limit
			if max_heart_count > heart_limit:
				max_heart_count = heart_limit
	# set players current hearts
	var sum = hearts + amount
	if sum >= max_heart_count:
		hearts = max_heart_count
	else:
		hearts += amount
	update_hearts()


func lose_hearts(amount):
	if hearts - amount <= 0:
		hearts = 0
		update_hearts()
		# kill player
	else:
		hearts -= amount
	update_hearts()


func set_hearts(value):
	hearts = value
	update_hearts()


func update_hearts():
	for i in range(0, get_child_count()):
		if i < hearts:
			get_child(i).visible = true
		else:
			get_child(i).visible = false
