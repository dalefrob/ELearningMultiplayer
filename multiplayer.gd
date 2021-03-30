extends Node

var server_port = 6009
#var server_ip = "127.0.0.1" # Comes from menu now
var max_players = 8

var local_info = { name = "Default Player", color = Color(1,1,1) }
var peer_info = {}

signal playerlist_updated

func _ready():
	pass

func create_server():
	var network = NetworkedMultiplayerENet.new()
	network.create_server(server_port, max_players)
	get_tree().network_peer = network
	
	network.connect("peer_connected", self, "_peer_connected")
	network.connect("peer_disconnected", self, "_peer_disconnected")
	
	emit_signal("playerlist_updated")
	OS.set_window_title("Server")
	print("Server Started.")

func join_server(ip_address):
	var network = NetworkedMultiplayerENet.new()
	network.create_client(ip_address, server_port)
	get_tree().network_peer = network
	
	network.connect("peer_connected", self, "_peer_connected")
	network.connect("peer_disconnected", self, "_peer_disconnected")
	
	emit_signal("playerlist_updated")
	OS.set_window_title("Client")
	print("Joined Server.")

# Called by both clients and the server
func _peer_connected(peer_id):
	print("Peer " + str(peer_id) + " connected.")
	# Client - send your details to everyone
	rpc_id(peer_id, "register_player", local_info)
	if !get_tree().is_network_server():
		pass

func _peer_disconnected(peer_id):
	print("Peer " + str(peer_id) + " disconnected.")
	peer_info.erase(peer_id)

remote func register_player(sender_info):
	var sender_id = get_tree().get_rpc_sender_id()
	# put the senders info into this clients info table
	peer_info[sender_id] = sender_info
	print("Registered:  " + sender_info.name + " - " + str(sender_id) + ".")
	emit_signal("playerlist_updated")

func cue_start_game():
	rpc("pre_configure_game")

remotesync func pre_configure_game():
	get_tree().set_pause(true) # Pre-pause
	var selfPeerID = get_tree().get_network_unique_id()

	# Load world
	var world = load("res://Scenes/Game.tscn").instance()
	get_node("/root").add_child(world)

	# Load my player
	var my_player = preload("res://Scenes/NetworkPlayer.tscn").instance()
	my_player.set_name(str(selfPeerID))
	my_player.set_network_master(selfPeerID) # Will be explained later
	get_node("/root/Game/Players").add_child(my_player)
	my_player.position = Vector2(64,64)

	# Load other players
	for p in peer_info:
		var player = preload("res://Scenes/NetworkPlayer.tscn").instance()
		player.set_name(str(p))
		player.set_network_master(p) # Will be explained later
		player.set_tag(peer_info[p].name)
		get_node("/root/Game/Players").add_child(player)
		player.position = Vector2(64,64)
	
	# Tell server (remember, server is always ID=1) that this peer is done pre-configuring.
	# The server can call get_tree().get_rpc_sender_id() to find out who said they were done.
	if !get_tree().is_network_server():
		rpc_id(1, "done_preconfiguring")
	elif get_tree().is_network_server() && peer_info.size() == 0:
		# if we're the server, and theres no one in the lobby - just start
		rpc("post_configure_game")

var players_done = []
remote func done_preconfiguring():
	var who = get_tree().get_rpc_sender_id()
	# Here are some checks you can do, for example
	assert(get_tree().is_network_server())
	assert(who in peer_info) # Exists
	assert(not who in players_done) # Was not added yet

	players_done.append(who)

	if players_done.size() == peer_info.size():
		rpc("post_configure_game")

remotesync func post_configure_game():
	# Only the server is allowed to tell a client to unpause
	if get_tree().get_rpc_sender_id() == 1:
		get_tree().set_pause(false)
		# Game starts now!
