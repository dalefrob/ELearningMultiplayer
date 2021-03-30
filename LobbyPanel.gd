extends Panel


func _ready():
	var _result = Multiplayer.connect("playerlist_updated", self, "_on_playerlist_updated")

func _on_playerlist_updated():
	$ItemList.clear()
	$ItemList.add_item(Multiplayer.local_info.name)
	for p in Multiplayer.peer_info.values():
		$ItemList.add_item(p.name)

func _on_StartGameButton_pressed():
	Multiplayer.cue_start_game()


func _on_LeaveLobby_pressed():
	pass # Replace with function body.


func _on_MultiplayerMenuPanel_server_created():
	$StartGameButton.disabled = false
