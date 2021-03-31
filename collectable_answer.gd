extends Area2D

class_name CollectableAnswer

export (String) var text
export (bool) var safe setget set_safe, get_safe

func set_safe(value):
	safe = value

func get_safe() -> bool:
	return safe

var active = true
var original_y
var tick_offset

signal touched_answer(answer)
signal expired

var alpha := 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	original_y = position.y
	tick_offset = randi()
	$Label.text = text
	Globals.load_data()

func _process(_delta):
	var y_offset = sin((OS.get_ticks_msec() + tick_offset) / 100.0)
	position.y = original_y + y_offset
	if active:
		$Sprite.modulate = Color(1,1,1,alpha)
		alpha -= 0.001
		if alpha <= 0:
			active = false
			emit_signal("expired")
			queue_free()

# ---- Click Event Code ---- #
#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton \
#	and event.button_index == BUTTON_LEFT \
#	and event.is_pressed():
#		self.on_click()
#
#func on_click():
#	print("Click")

# this gets called for when any player enters this body
func _on_CollectibleWord_body_entered(body):
	if !active:
		return
	if body.is_in_group("player"):
		active = false
		emit_signal("touched_answer", self)
		# visual queue
		$Sprite.visible = false
		# show correctness locally only
		if body.is_network_master():
			if !safe:
				$Label.add_color_override("font_color", Color(1,0,0,1))
			else:
				$Label.add_color_override("font_color", Color(0,1,0,1))
			# delete after a sec
			yield(get_tree().create_timer(1.0), "timeout")
			queue_free()
		else:
			# delete straight away
			queue_free()
		
