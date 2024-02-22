extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity_on = true


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor() and gravity_on:
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	update_animation(direction)
	
	if Input.is_action_just_pressed("ui_home"):
		self.scale *= 2
	if Input.is_action_just_pressed("ui_end"):
		self.scale /= 2
	if Input.is_action_just_pressed("ui_page_up"):
		self.rotation_degrees += 5
	if Input.is_action_just_pressed("ui_page_down"):
		self.rotation_degrees -= 5
	if Input.is_action_just_pressed("ui_text_completion_replace"):
		self.position.x += 1000
	if Input.is_action_just_pressed("ui_text_backspace"):
		self.position.x -= 1000
	if Input.is_action_just_pressed("ui_text_toggle_insert_mode"):
		self.position.y += JUMP_VELOCITY / 2.0
	if Input.is_action_just_pressed("ui_text_delete"):
		self.position.y -= JUMP_VELOCITY / 2.0
	if Input.is_action_just_pressed("ui_cancel"):
		gravity_on = not gravity_on
	
	
	
	move_and_slide()
	
	
@onready var anim = $AnimatedSprite2D
func update_animation(direction):
	if not is_on_floor():
		anim.play("jump")
	elif direction != 0: 
		anim.play("walk")
		anim.flip_h = direction < 0 
	else: 
		anim.play("default")
		
