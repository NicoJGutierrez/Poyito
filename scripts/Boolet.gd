extends Area2D

var speed = 750

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Boolet_body_entered(body):
	"""
	if body.is_in_group("mobs"):
		body.queue_free()
		"""
	queue_free()


func _on_Boolet_area_entered(area):
	queue_free()
