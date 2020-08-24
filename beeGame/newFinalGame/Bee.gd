extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mouseX
var mouseY
var beeX
var beeY
var inCursor
var randX
var randY
var type = "bee"
# Called when the node enters the scene tree for the first time.
func _ready():
	inCursor = false
	randX = 0
	randY = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#resetting values
	mouseX = get_global_mouse_position().x  -20
	mouseY = get_global_mouse_position().y
	beeX = self.position.x
	beeY = self.position.y
	
	
	self.position.x += rand_range(-1, 1)
	self.position.y += rand_range(-1, 1)
	
	if( inCursor == false):
		if(beeX < mouseX):
			if((mouseX - beeX)> 150):
				self.position.x +=2.15
			else:
				self.position.x += (mouseX - beeX)/70
	
	#moving the bee left in the x direction
		if(beeX > mouseX):
			if((beeX -mouseX)> 150):
				self.position.x -=2.15
			else:
				self.position.x -= (beeX - mouseX)/70
			
		if(beeY < mouseY):
			if((mouseY - beeY)> 150):
				self.position.y +=2.15
			else:
				self.position.y += (mouseY - beeY)/50
		if(beeY > mouseY):
			if((beeY -mouseY)> 150):
				self.position.y -=2.15
			else:
				self.position.y -= (beeY - mouseY)/50
				
	#setting the random buzzing within the cursor area
	if(inCursor == true):
		if(randX < .1 or randX >-.1):
			randX = rand_range(-1,1)
			randX = rand_range(-1,1)
		if(randY < .1 or randY >-.1):
			randY = rand_range(-1,1)
		self.position.x += randX
		self.position.y += randY
		if randX > 0:
			randX -=.05
		if randX < 0:
			randX +=.05
		if randY > 0:
			randY -=.05
		if randY < 0:
			randY +=.05
			
	if(self.position.x < mouseX):
		$"Sprite".set_flip_h(false)
	else:
		$"Sprite".set_flip_h(true)



func _on_Area2D_area_shape_entered(area_id, area, area_shape, self_shape):
	if(area.get_parent().type== "bee"):
		inCursor = true
	
	pass # Replace with function body.


func _on_Area2D_area_shape_exited(area_id, area, area_shape, self_shape):
	inCursor = false
	pass # Replace with function body.
