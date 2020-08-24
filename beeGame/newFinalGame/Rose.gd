extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var type = "rose"
var nectar
var numOfBees
# Called when the node enters the scene tree for the first time.
func _ready():
	nectar = 0
	numOfBees = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if (global.nectar /54 < 1):
		global.nectar += numOfBees/100.0

	pass


func _on_Area2D_area_entered(area):
	if(area.get_parent().type == "bee"):
		numOfBees += 1

	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	if(area.get_parent().type == "bee"):
		numOfBees -= 1
	pass # Replace with function body.
