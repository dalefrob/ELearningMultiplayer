extends Panel

onready var ip = $IpAddressEdit
onready var player_name = $NameEdit

func _ready():
	pass

signal server_created

func _on_CreateServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.create_server()
	emit_signal("server_created")

func _on_JoinServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.join_server(ip.text)
