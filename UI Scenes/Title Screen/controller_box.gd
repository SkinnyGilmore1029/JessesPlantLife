extends ReferenceRect

@export var controller_box: ReferenceRect
@export var options: PanelContainer
@export var load_game: PanelContainer
@export var new_game: PanelContainer

var current_option: String = ""

func _ready() -> void:
	current_option = "New Game"

	InputManager.move_ControllerBox_up.connect(move_box_up)
	InputManager.move_ControllerBox_down.connect(move_box_down)
	InputManager.option_picked.connect(option_selected)

func move_box_up() -> void:
	match current_option:
		"New Game" :
			current_option = "Options"
			controller_box.position = options.position
			
		"Load Game" :
			current_option = "New Game"
			controller_box.position = new_game.position
			
		"Options" :
			current_option = "Load Game"
			controller_box.position = load_game.position

func move_box_down() -> void:
	match current_option:
		"New Game":
			current_option = "Load Game"
			controller_box.position = load_game.position

		"Load Game":
			current_option = "Options"
			controller_box.position = options.position

		"Options":
			current_option = "New Game"
			controller_box.position = new_game.position


func option_selected()->void:
	match current_option:
		"New Game":
			get_tree().change_scene_to_file("res://Game Scenes/Areas/Farm.tscn")
			GameState.current_scene = "Playing"
			print("current_scene")

		"Load Game":
				print("not ready yet")

		"Options":
			print("not ready yet")
