extends KinematicBody2D

var motion = Vector2()

func _physics_process(_delta):
	motion.y+= 15
	if Input.is_action_pressed("ui_right"):
		motion.x= 100
	
	elif Input.is_action_pressed("ui_left"):
		motion.x= -100
	else:
		motion.x= 0
	
	if Input.is_action_just_pressed("ui_up"):
		motion.y = -400
	
	move_and_slide(motion)
