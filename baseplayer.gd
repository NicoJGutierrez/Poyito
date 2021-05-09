extends KinematicBody2D

#variables
var velocity = Vector2(0,0) 
const SPEED = 10000
const GRAVITY = 4000
const JUMPFORCE = -1400 
const chutspid = 1
var chut = true
var n = 0

func shoot():
	pass

func jump():
	velocity.y = JUMPFORCE 
	
func left(delta):
	velocity.x += -SPEED*delta
	
func right(delta):
	velocity.x += SPEED*delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	velocity.y = velocity.y + GRAVITY*delta
	velocity = move_and_slide(velocity, Vector2.UP) 
	velocity.x = lerp(velocity.x, 0, 0.2)
	
	#recarga de bala
	if chut == false:
		n += 1*delta
		if n >= chutspid:
			chut = true
			n = 0
