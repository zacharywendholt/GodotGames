extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var hiveHealth = 52
var gameOver = false
var youWin = false
var nectar = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	hiveHealth = 52
	nectar = 0
	gameOver = false
	youWin = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hiveHealth <= 0:
		gameOver = true
		hiveHealth = 0

	if nectar >= 54:
		youWin = true
		

		
	if gameOver == true or youWin == true:
		if Input.is_action_just_pressed("ui_accept"):
			go.restart_scene()
			hiveHealth = 52
			nectar = 0
			gameOver = false
			youWin = false
			print("a")
	pass
