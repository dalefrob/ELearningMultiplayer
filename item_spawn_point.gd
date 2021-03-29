extends Position2D

class_name ItemSpawnPoint

func is_item_here():
	return get_child_count() > 0

func get_item():
	if !is_item_here():
		return false
	return get_child(0)

func set_item(item_node):
	# replace existing item
	if is_item_here():
		get_child(0).queue_free()
	add_child(item_node)
	(item_node as Node2D).position = Vector2.ZERO

func _ready():
	pass
