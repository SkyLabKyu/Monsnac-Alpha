extends CharacterBody2D

func _physics_process(delta):
	position = get_viewport().get_mouse_position()
	#print(position)
