extends KinematicBody2D

const SPEED = 250
const JUMP_FORCE = -400
const GRAVITY = 10
const UP = Vector2(0,-1)
var motion = Vector2()

func _process(delta):
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else :
		motion.x = 0
	if Input.is_action_just_pressed("ui_jump"):
		if is_on_floor():
			motion.y = JUMP_FORCE
	
	motion = move_and_slide(motion, UP)
	pass