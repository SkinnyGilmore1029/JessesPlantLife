extends Control

func _ready() -> void:
	%NewGameButton.grab_focus()


func new_game_pressed() -> void:
	GameState.current_scene = "New Game"
	get_tree().change_scene_to_file("res://Game Scenes/Areas/Farm.tscn")



func load_game_pressed() -> void:
	print("Load Game Pressed")




func Settings_pressed() -> void:
	print("Settings Pressed")
