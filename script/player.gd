extends CharacterBody2D

var inter = null
signal  touch 
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#todo esto

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
#hace que se mueva el personaje 




	move_and_slide()

	if Input.is_action_just_pressed("tousch"):
		emit_signal("touch", inter)
		




func _on_sensor_area_entered(area):
	if area.is_in_group("interation_T"):
		inter = area

	





func _on_sensor_area_exited(area):
	if area.is_in_group("interation_T"):
		inter = null
