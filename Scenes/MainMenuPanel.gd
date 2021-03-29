extends Panel


func _ready():
	pass


func _on_SingleplayerButton_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_MultiplayerButton_pressed():
	pass # Replace with function body.
