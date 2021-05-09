extends KinematicBody2D

onready var APlayer = $AnimationPlayer

var state = "IDLE"
var t = 0
export var TdABate = 1
var jugador = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape2D.disabled = true
	$Sprite.visible = false
	#falta definir que jugador es 

func changestate(new):
	state = new
	if state == "IDLE":
		$CollisionShape2D.disabled = true
		$Sprite.visible = false
	else:
		$CollisionShape2D.disabled = false
		$Sprite.visible = true
		APlayer.play("Bate")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if state == "ATK":
		t += delta
		if t >= TdABate:
			changestate("IDLE")
			t = 0



func _on_Player1_chut():
	changestate("ATK")
