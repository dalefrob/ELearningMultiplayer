extends Panel


func _ready():
	pass


func _on_SingleplayerButton_pressed():
	# Load world
	var world = load("res://Scenes/Game.tscn").instance()
	get_node("/root").add_child(world)


func _on_MultiplayerButton_pressed():
	pass # Replace with function body.
