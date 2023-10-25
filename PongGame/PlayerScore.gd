extends Label

var score = 0

func _on_main_update_player_score():
	score += 1
	text = "%s" % score
