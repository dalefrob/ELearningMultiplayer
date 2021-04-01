extends Node

var server_port = 6009
#var server_ip = "127.0.0.1" # Comes from menu now
var max_players = 8

var world = null
var local_info = { name = "Default Player", color = Color(1,1,1) }
var peer_info = {}

signal host_disconnected
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
	network.connect("server_disconnected", self, "_server_disconnected")
	
	emit_signal("playerlist_updated")
	OS.set_window_title("Client")
	print("Joined Server.")

# called by both clients and the server
func _peer_connected(peer_id):
	print("Peer " + str(peer_id) + " connected.")
	# Client - send your details to everyone
	rpc_id(peer_id, "register_player", local_info)
	if !get_tree().is_network_server():
		pass

# called by both clients and the server
func _peer_disconnected(peer_id):
	print("Peer " + str(peer_id) + " disconnected.")
	peer_info.erase(peer_id)

# called by clients when the server disconnects
func _server_disconnected():
	world.queue_free()
	peer_info.clear()
	emit_signal("host_disconnected")

remote func register_player(sender_info):
	var sender_id = get_tree().get_rpc_sender_id()
	# put the senders info into this clients info table
	peer_info[sender_id] = sender_info
	print("Registered:  " + sender_info.name + " - " + str(sender_id) + ".")
	emit_signal("playerlist_updated")

# called from the lobby
func cue_start_game():
	rpc("pre_configure_game")

# TODO -- Move this to the network_game file

# this is called on each client and also the server
remotesync func pre_configure_game():
	# Pre-pause
	get_tree().set_pause(true) 
	# Load world
	world = load("res://Scenes/Game.tscn").instance()
	get_node("/root").add_child(world)

	# Tell server (remember, server is always ID=1) that this peer is done pre-configuring.
	# The server can call get_tree().get_rpc_sender_id() to find out who said they were done.
	if !get_tree().is_network_server():
		rpc_id(1, "done_preconfiguring")
	# SINGLE PLAYER if we're the server, and theres no one in the lobby - just start
	elif get_tree().is_network_server() && peer_info.size() == 0:
		rpc("post_configure_game")

# this will be called multiple times as clients configure their game
var players_done = []
remote func done_preconfiguring():
	var who = get_tree().get_rpc_sender_id()
	# Here are some checks you can do, for example
	assert(get_tree().is_network_server()) # only the server calls this function
	assert(who in peer_info) # the sender exists in the peer_info
	assert(not who in players_done) # the sender isn't in the done list
	
	players_done.append(who)
	
	# once all the clients have configured, we (server) move on with the game
	if players_done.size() == peer_info.size():
		rpc("post_configure_game")

remotesync func post_configure_game():
	# Only the server is allowed to tell a client to unpause
	if get_tree().get_rpc_sender_id() == 1:
		# start game!
		get_tree().set_pause(false)
