extends Area2D

export var Assigned_Workspace = "."

var space
var active = false

func _ready():
	space = get_node(Assigned_Workspace)
	space.offset.x += 512

func _on_Cooker_body_entered(body):
	if body.is_in_group("Player"):
		active = true
		space.offset.x -= 512
		
func _on_Cooker_body_exited(body):
	if body.is_in_group("Player"):
		active = false
		space.offset.x += 512
