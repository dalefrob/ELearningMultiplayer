extends Panel

onready var ip = $IpAddressEdit
onready var player_name = $NameEdit
onready var p_color_template = $PlayerColorList/_color_template

var random_names = ["Orion", "Dale", "Mana", "Brad", "James", "Rob", "Dan"]

signal server_created

func _ready():
	randomize()
	player_name.text = random_names[rand_range(0, random_names.size())]
	set_up_colors()

# todo finish this!! USE TEXTURES NOT NODES
func set_up_colors():
	var colors = [Color8(255,0,0,255),Color8(255,255,0,255),Color8(0,255,0,255),Color8(0,0,255,255)]
	for c in colors:
		var new_item = p_color_template.duplicate()
		new_item.color = c
		new_item.show()

func _on_CreateServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.create_server()
	emit_signal("server_created")

func _on_JoinServerButton_pressed():
	Multiplayer.local_info.name = player_name.text
	Multiplayer.join_server(ip.text)
