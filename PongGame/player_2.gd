extends CharacterBody2D

@export var speed = 600

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up_player2"):
		position.y -= speed * delta
		position.y = clamp(position.y, 100, 550)
	elif Input.is_action_pressed("move_down_player2"):
		position.y += speed * delta
		position.y = clamp(position.y, 100, 550)
