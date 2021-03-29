extends Area2D

export (float) var speed = 70.0 

func increase_speed():
	speed += 5

var movement_vector : Vector2
var player

func _ready():
	var player_grp = get_tree().get_nodes_in_group("player")
	if player_grp.size() > 0:
		player = player_grp[0]


func _process(delta):
	if !player:
		return
	
	movement_vector = (player.position - position).normalized()
	if movement_vector.x < 0:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false
	
	if !player.is_dead():
		translate(movement_vector * speed * delta)


func _on_Ghost_body_entered(body):
	var player = body as Player
	if player:
		var knockback = movement_vector
		knockback.y = -1
		knockback.x *= 3
		player.take_damage(1, knockback)
