extends StaticBody2D

export var color = Color(1.0, 0.0, 0.0, 1.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("ColorRect").color = color;
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func destroy():
	queue_free()
	pass