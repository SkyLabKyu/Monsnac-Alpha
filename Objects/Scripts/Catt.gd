extends KinematicBody2D


export var mSpeed = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var direction = Vector2(0, 0)
	
	direction.x = float(int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")))
	direction.y = float(int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
	
	move_and_slide(direction*mSpeed)
