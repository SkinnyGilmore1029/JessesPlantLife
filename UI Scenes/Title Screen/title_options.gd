extends Control

func _on_new_game_pressed() -> void:
	GameState.current_scene = "New Game"
	print(GameState.current_scene, " From Title ? Yep from vscode")
	get_tree().change_scene_to_file("res://Game Scenes/Areas/Farm.tscn")


func _on_load_game_pressed() -> void:
	pass # Replace with function body.


func _on_options_pressed() -> void:
	pass # Replace with function body.
