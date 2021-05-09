extends StaticBody2D


onready var P1 = get_node("../Player1")
onready var P2 = get_node("../Player2")
	#Buscar a los juegadores




func _process(delta):
	var posobjetivo = ((P1.position.x + P2.position.x)/2)
	#revisar si algún jugador está siendo golpeado
	if 515 < posobjetivo and posobjetivo < 1515:
		#Buscar el punto medio entre los dos juegadores y poner la cámara ahí
		
		position.x = posobjetivo
		#print(str(posobjetivo))
		pass
	else:
		pass
