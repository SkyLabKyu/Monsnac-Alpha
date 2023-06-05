class_name Movable extends Node2D

@export var hovered = true
@export var Grab_Area_Reference = "Grab Area3D"
@export var Cursor_Reference = "/root/Root/Mouse"

var mouse_mov_buff = Vector2(0, 0)
var mouse_pos_buff = Vector2(0, 0)
var g_area
var cursor

func _ready():
	g_area = get_node(Grab_Area_Reference)
	print(get_node(Cursor_Reference).get_children())
	cursor = get_node(Cursor_Reference)


func _process(delta):
	hovered = g_area.overlaps_body(cursor)
	mouse_mov_buff = Vector2(get_viewport().get_mouse_position() - mouse_pos_buff)
	mouse_pos_buff = get_viewport().get_mouse_position()
	
	if Input.is_action_pressed("mouse_click") && hovered && get_node("..").offset.x<1:
		position+=mouse_mov_buff
