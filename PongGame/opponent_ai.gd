extends CharacterBody2D

var ball_location = Vector2()
var ball
var target_position = Vector2()
var speed = 5 #10 impossible to beat 5 is decent
var ball_is_spawned = false
var max_speed = Vector2()
func _process(delta):
	if ball_is_spawned == true:
		ball = get_parent().get_node("Ball")
		ball_location.x = ball.global_position.x
		ball_location.y = ball.global_position.y
		target_position.y = ball_location.y - position.y
		if ball_location.x > 600:
			max_speed = target_position * speed * delta
			clamp(max_speed.y, 80, 500)
			move_and_collide(max_speed)

func _on_ball_detection_body_entered(body):
	ball_is_spawned = true

func _on_ball_detection_body_exited(body):
	ball_is_spawned = false
