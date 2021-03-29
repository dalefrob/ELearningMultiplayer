extends Area2D

# spikes only kill when the player lands on the top

func _ready():
	pass


func _on_Spike_body_entered(body):
	if body is Player:
		var player = body as Player
		var player_vel = player.get_velocity()
		if player_vel.y > 0:
			player.take_damage(1)
