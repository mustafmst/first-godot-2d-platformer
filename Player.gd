extends KinematicBody2D

const SPEED = 250
const JUMP_FORCE = 400
const GRAVITY = 10
const UP = Vector2(0,-1)
var movment = Vector2()

func _process(delta):
	movment.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		movment.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		movment.x = -SPEED
	else :
		movment.x = 0
	if Input.is_action_just_pressed("ui_jump"):
		if is_on_floor():
			movment.y = -JUMP_FORCE
	
	movment = move_and_slide(movment, UP)
	pass
