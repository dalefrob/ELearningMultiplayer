extends Area2D

class_name HeartPickup

var picked_up = false

func _ready():
	pass


func _on_HeartPickup_body_entered(body):
	var player = body as Player
	if player && !picked_up:
		picked_up = true
		player.heal_damage(1)
		queue_free()
