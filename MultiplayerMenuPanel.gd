extends Panel

onready var ip = $IpAddressEdit
onready var player_name = $NameEdit

var random_names = ["Orion", "Dale", "Mana", "Brad", "James", "Rob", "Dan"]

signal server_created

func _ready():
	randomize()
	player_name.text = random_names[rand_range(0, random_names.size())]


func _on_CreateServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.create_server()
	emit_signal("server_created")

func _on_JoinServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.join_server(ip.text)
