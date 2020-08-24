extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var containerStart

# Called when the node enters the scene tree for the first time.
func _ready():
	containerStart = -20
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$"bar".set_scale(Vector2(((global.nectar)/64.0),1))
	$"bar".position.x = containerStart +((global.nectar)/2.4)
	pass
