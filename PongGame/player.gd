extends CharacterBody2D

@export var speed = 600

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		position.y -= speed * delta
		position.y = clamp(position.y, 100, 550)
	elif Input.is_action_pressed("move_down"):
		position.y += speed * delta
		position.y = clamp(position.y, 100, 550)
