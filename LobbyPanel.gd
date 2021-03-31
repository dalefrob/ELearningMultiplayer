extends Panel

func _ready():
	Multiplayer.connect("playerlist_updated", self, "_on_playerlist_updated")
	Multiplayer.connect("host_disconnected", self, "_on_host_disconnected")

func _on_playerlist_updated():
	$ItemList.clear()
	$ItemList.add_item(Multiplayer.local_info.name)
	for p in Multiplayer.peer_info.values():
		$ItemList.add_item(p.name)


func _on_host_disconnected():
	$ItemList.clear()
	$"../AcceptDialog".dialog_text = "Host Disconnected."
	$"../AcceptDialog".show()


func _on_StartGameButton_pressed():
	Multiplayer.cue_start_game()


func _on_LeaveLobby_pressed():
	get_tree().network_peer = null
	$ItemList.clear()
	Multiplayer.peer_info.clear()


func _on_MultiplayerMenuPanel_server_created():
	$StartGameButton.disabled = false
