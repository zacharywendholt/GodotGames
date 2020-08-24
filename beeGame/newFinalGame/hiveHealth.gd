extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var xvalue = 0
var containerStart

# Called when the node enters the scene tree for the first time.
func _ready():
	containerStart =-8
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$"bar".set_scale(Vector2(((global.hiveHealth)/64.0),1))
	$"bar".position.x = containerStart +((global.hiveHealth)/2.4)

	
	pass
