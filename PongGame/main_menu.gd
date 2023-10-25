extends Node

var scene = get_parent()

func _on_play_bot_pressed():
	remove_child(scene)
	var next_scene_resource_bot = load("res://main.tscn")
	var next_scene_bot = next_scene_resource_bot.instantiate()
	$PlayBot.hide()
	$Label.hide()
	$PvP.hide()
	$Label2.hide()
	add_child(next_scene_bot)

func _on_pv_p_pressed():
	remove_child(scene)
	var next_scene_resource_pvp = load("res://main_pvp.tscn")
	var next_scene_pvp = next_scene_resource_pvp.instantiate()
	$PlayBot.hide()
	$Label.hide()
	$PvP.hide()
	$Label2.hide()
	add_child(next_scene_pvp)

func _process(delta):
	if Input.is_action_pressed("return_to_main_menu"):
		$PlayBot.show()
		$Label.show()
		$PvP.show()
