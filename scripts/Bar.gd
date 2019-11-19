extends KinematicBody2D

export var id = 0

var speed = Vector2(10, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_checks()
	
	speed = Vector2(10, 0)
	pass

func move_checks():
	if(Input.is_action_pressed("SHIFT_%s" % id)):
		speed = speed * 2
	
	if(Input.is_action_pressed("LEFT_%s" % id)):
		move_and_collide(-speed)
	elif(Input.is_action_pressed("RIGHT_%s" % id)):
		move_and_collide(speed)
	
	pass