extends KinematicBody2D


export var mSpeed = 0

onready var Sprite = get_node("Sprite")

func _process(delta):
	var direction = Vector2(0, 0)
	
	direction.x = float(int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")))
	direction.y = float(int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")))
	

	if(direction.x!=0):
		Sprite.animation = "Side"
	elif(direction.y>0):
		Sprite.animation = "Down"
	elif(direction.y<0):
		Sprite.animation = "Up"
	else:
		Sprite.animation = "Idle"
	
	if(direction.x>0):
		Sprite.flip_h = true
	else:
		Sprite.flip_h = false
	move_and_slide(direction*mSpeed)
