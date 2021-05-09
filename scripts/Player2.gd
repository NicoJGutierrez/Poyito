extends "res://baseplayer.gd"


func _physics_process(delta):
	if Input.is_action_pressed("right2"): 
		right(delta)
		
	if Input.is_action_pressed("left2"): 
		left(delta)
	
	if Input.is_action_pressed("jump2") and is_on_floor(): 
		jump()

	if Input.is_action_pressed("shoot"):
		shoot()
	
