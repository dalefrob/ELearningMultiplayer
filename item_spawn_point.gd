extends Position2D

# a spawn point for an item.
# it adds the item as a child of this node.

class_name ItemSpawnPoint

func has_item():
	return get_child_count() > 0

func get_item():
	if !has_item():
		return null
	return get_child(0)

func set_item(item_node):
	# replace existing item
	if has_item():
		get_child(0).queue_free()
	add_child(item_node)
	(item_node as Node2D).position = Vector2.ZERO
