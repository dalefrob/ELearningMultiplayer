extends KinematicBody2D

class_name Network_Player

const GRAVITY = 0.18
const JUMPFORCE = 3.1
const MAXFALLSPEED = 5
const MAXSPEED = 2
const ACCEL = 1

# life code ----
export (NodePath) var hearts_container_path
# onready var hearts_ui = get_node(hearts_container_path) as HeartBoxContainer
export var max_life = 3
var life = 0
var dead = false

var speed = 80.0
var hitstun = false
var velocity = Vector2.ZERO
var grounded = false

signal player_died

onready var anim_player = $AnimationPlayer

func set_tag(tag):
	$Tag.text = tag

func get_velocity():
	return velocity

func is_dead():
	return dead


func _ready():
	life = max_life
	# hearts_ui.hearts = life


func _process(_delta):
	pass


func _physics_process(_delta):
	if !is_network_master():
		return
	
	if is_on_floor() && !hitstun && !dead:
		velocity.y = 0
		if Input.is_action_pressed("jump"):
			velocity.y = -JUMPFORCE
	
	# apply gravity and fall limit
	velocity.y += GRAVITY
	if velocity.y > MAXFALLSPEED:
		velocity.y = MAXFALLSPEED
	
	# clamp how fast you can travel in x
	velocity.x = clamp(velocity.x, -ACCEL, ACCEL)
	
	if !hitstun:
		if Input.is_action_pressed("move_right") && !dead:
			velocity.x += ACCEL
			$Sprite.flip_h = false
		elif Input.is_action_pressed("move_left") && !dead:
			velocity.x -= ACCEL
			$Sprite.flip_h = true
		else:
			velocity.x = lerp(velocity.x, 0, 0.5)
	# do the move
	var _result = move_and_slide(velocity * speed, Vector2.UP)
	rpc_unreliable("sync_position", position)
	
	# check if we hit the ceiling
	if is_on_ceiling():
		velocity.y = 0

puppet func sync_position(_position):
	if position.x < _position.x:
		$Sprite.flip_h = false
	elif position.x > _position.x:
		$Sprite.flip_h = true
	position = _position

func take_damage(amount = 1, knockback_velocity = Vector2.ZERO):
	flicker()
	# reduce life
	if life - amount <= 0:
		life = 0
		# hearts_ui.hearts = life
		die()
	else:
		life -= amount
		# hearts_ui.hearts = life

	if knockback_velocity.length() > 0:
		# do knockback
		hitstun = true
		velocity = knockback_velocity
		yield(get_tree().create_timer(0.2), "timeout")
		hitstun = false

# flicker the sprite white on hit
func flicker():
	var flicker_times = 2
	var flicker_frames = 3
	
	for i in flicker_times:
		$Sprite.modulate = Color(10, 10, 10, 10)
		for j in flicker_frames:
			yield(get_tree(), "idle_frame")
		$Sprite.modulate = Color(1, 1, 1, 1)
		for j in flicker_frames:
			yield(get_tree(), "idle_frame")


func heal_damage(amount = 1):
	if life + amount >= max_life:
		life = max_life
	else:
		life += amount
	# update UI
	# hearts_ui.hearts = life


func die():
	velocity = Vector2.ZERO
	dead = true
	anim_player.play("die")
	yield(get_tree().create_timer(1.0), "timeout")
	emit_signal("player_died")
	queue_free()

