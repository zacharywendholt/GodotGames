extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movementSpeed = 1
var attacking = false
var type = "hummingbird"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= movementSpeed
	
	if attacking == true:
		global.hiveHealth -= .1
		
	if global.youWin == true:
		go.destroy(self)
		
	if global.gameOver == true:
		go.destroy(self)
	pass





func _on_Hummingbird_area_exited(area):
	pass # Replace with function body.


func _on_Timer_timeout():
	print("a")
	go.spawn_instance("Hummingbird", (1200), 196.35)
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	if(area.get_parent().type == "bee"):
		go.destroy(self)
	if(area.get_parent().type == "hive"):
		movementSpeed = 0
		attacking = true
	if(area.get_parent().type == "hummingbird"):
		print("hummingbird")
	pass # Replace with function body.



func _on_Area2D_area_exited(area):
	pass # Replace with function body.
