extends CharacterBody2D

@export var speed = 1000

# Called when the node enters the scene tree for the first time.
func start(_position, _direction):
	rotation = _direction
	position = _position
	velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
