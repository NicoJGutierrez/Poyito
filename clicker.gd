extends Panel


# Declare member variables here. Examples:
var a = "puto"
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("Label").text = str(a)
	a += " puto"
