extends Node2D

var hovered = false

var mouse_pos_buff = Vector2(0,0)
var mouse_mov_buff = Vector2(0,0)

func _process(delta):
	if Input.is_action_pressed("mouse_click") && hovered:
		position+=mouse_mov_buff
	
	mouse_mov_buff = Vector2(get_viewport().get_mouse_position() - mouse_pos_buff)
	mouse_pos_buff = get_viewport().get_mouse_position()

func _on_Grab_Area_mouse_entered():
	hovered = true

func _on_Grab_Area_mouse_exited():
	hovered = false
