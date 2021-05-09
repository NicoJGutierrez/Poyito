extends "res://baseplayer.gd"

signal chut

func _physics_process(delta):
	if Input.is_action_pressed("right"): 
		right(delta)
	
	if Input.is_action_pressed("left"): 
		left(delta)
	
	if Input.is_action_pressed("jump") and is_on_floor(): 
		jump()

	if Input.is_action_pressed("shoot"):
		shoot()
		emit_signal("chut")
	
