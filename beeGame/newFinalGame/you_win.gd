extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.youWin == true:
		self.show()
		global.hiveHealth = 52
		
	if global.youWin == false:
		self.hide()
		
	pass
