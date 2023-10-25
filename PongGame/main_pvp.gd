extends Node

var Ball = preload("res://ball.tscn")
var ball_instance
signal update_player_score
signal update_opponent_score

func _process(delta):
	if Input.is_action_pressed("return_to_main_menu"):
		queue_free()

func _ready():
	$PlayerScore.hide()
	$OpponentScore.hide()

func start():
	ball_instance = Ball.instantiate()
	var random_ball_spawner = randf_range(0, 1)
	if random_ball_spawner >= 0.5:
		ball_instance.start($BallStartPosition.global_position, randf_range(2.0944, 2.79253)) #From 110 to 140 Deg
		add_child(ball_instance)
	else:
		ball_instance.start($BallStartPosition.global_position, randf_range(3.66519, 4.18879)) #From 210 to 240 Deg
		add_child(ball_instance)

func new_game():
	$PlayerScore.show()
	$OpponentScore.show()
	start()

func _on_player_scoring_area_body_entered(body):
	update_player_score.emit()
	$Timer.start()

func _on_opponent_scoring_area_body_entered(body):
	update_opponent_score.emit()
	$Timer.start()


func _on_timer_timeout():
	start()
