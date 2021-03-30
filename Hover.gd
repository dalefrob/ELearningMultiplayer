extends Sprite


func _process(_delta):
	var offset_y = sin(OS.get_system_time_msecs() * 0.005) / 4
	translate(Vector2(0, offset_y))
