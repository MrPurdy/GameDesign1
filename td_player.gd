extends CharacterBody2D

const SPEED = 200.0
const MAXIMUM_OBTAINABLE_HEALTH = 400.0

enum STATES { IDLE=0, DEAD, DAMAGED, ATTACKING, CHARGING }

@export var data = {
	"max_health": 60.0, # 20hp per heart: 5 per fraction
	"health": 60.0,     # Min 60 Max 400
	"money": 0,
	"state": STATES.IDLE,
	"secondaries": [],
}

var inertia = Vector2()
var look_direction = Vector2.DOWN
var attack_direction = Vector2.DOWN
var animation_lock = 0.0
var damage_lock = 0.0
var charge_time = 2.5
var charge_start_time = 0.0

var slash_scene = preload("res://entitys/attacks/slash.tscn")
var menu_scene = preload("res://my_gui.tscn")
var menu_instance = null

@onready var p_HUD = get_tree().get_first_node_in_group("HUD")

func get_direction_name():
	return ["right", "down", "left", "up"][
		int(round(look_direction.angle() * 2 / PI)) % 4
	]
	
func attack():
	data.state = STATES.ATTACKING
	var dir_name = get_direction_name()
	if dir_name == "left":
		$AnimatedSprite2D.flip_h = 0
	$AnimatedSprite2D.play("swipe_" + dir_name)
	attack_direction = look_direction
	var slash = slash_scene.instantiate()
	slash.position = attack_direction * 20.0
	slash.rotation = Vector2().angle_to_point(-attack_direction)
	add_child(slash)
	animation_lock = 0.2
	
	
func pickup_money(value):
	data.money += value

func pickup_health(value):
	data.health += value
	data.health = clamp(data.health, 0, data.max_health)
	
func _ready():
	p_HUD.show()
	menu_instance = menu_scene.instantiate()
	$Camera2D.add_child.call_deferred(menu_instance)
	menu_instance.hide()
	
func _physics_process(delta):
	animation_lock = max(animation_lock-delta, 0.0)
	damage_lock = max(damage_lock-delta, 0.0)
	
	if animation_lock == 0.0 and data.state != STATES.DEAD:
		if data.state != STATES.CHARGING:
			data.state = STATES.IDLE
		var direction = Vector2(
			Input.get_axis("ui_left", "ui_right"),
			Input.get_axis("ui_up", "ui_down")
		)
		update_animation(direction)
		if direction.length() > 0:
			look_direction = direction
			direction = direction.normalized()
			velocity = direction * SPEED
		else:
			velocity = velocity.move_toward(Vector2(), SPEED)
		velocity += inertia
		move_and_slide()
		inertia = inertia.move_toward(Vector2(), delta * 1000.0)
	
	if data.state != STATES.DEAD:
		if Input.is_action_just_pressed("ui_accept"):
			attack()
	
	if Input.is_action_just_pressed("ui_cancel"):
		menu_instance.show()


func update_animation(direction):
	var a_name = "idle_"
	if direction.length() > 0:
		look_direction = direction
		a_name = "walk_"
	if look_direction.x != 0:
		a_name += "side"
		$AnimatedSprite2D.flip_h = look_direction.x < 0
	elif look_direction.y < 0:
		a_name += "up"
	elif look_direction.y > 0:
		a_name += "down"
		
	$AnimatedSprite2D.animation = a_name
	$AnimatedSprite2D.play()
