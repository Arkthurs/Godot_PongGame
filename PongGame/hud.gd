extends CanvasLayer

signal start_game
	
func _on_start_button_pressed():
	$"Start Timer".start()
	$"Start Button".hide()

func _on_start_timer_timeout():
	start_game.emit()
