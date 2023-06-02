extends Area2D

export var Assigned_Workspace = "."

var space

func _ready():
	space = get_node(Assigned_Workspace)

func _on_Cooker_body_entered(body):
	if body.is_in_group("Player"):
		space.visible = true
		print("in")
		
func _on_Cooker_body_exited(body):
	if body.is_in_group("Player"):
		space.visible = false
		print("out")
