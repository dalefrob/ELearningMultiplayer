extends CanvasLayer

onready var ingame_menu = $InGameMenu

func _on_MenuButton_pressed():
	ingame_menu.popup()
