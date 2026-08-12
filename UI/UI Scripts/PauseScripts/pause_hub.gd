extends Control



func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS


func _process(_delta: float) -> void:
	if GameInputEvents.open_menu_hud():
		open_menu()
	if GameInputEvents.close_menu_hub():
		close_menu()

##
func open_menu() -> void:
	self.get_parent().visible = true
	get_tree().paused = true
	%SeedSatchelButton.grab_focus()
	GameState.last_menu_on ="Pause Hub"

func close_menu() -> void:
	match GameState.last_menu_on:
		"Pause Hub":
			get_tree().paused = false
			self.get_parent().visible = false
		"Seed Satchel":
			SignalHub.close_seed_satchel.emit(self.get_parent(), %SeedSatchelButton)

func _on_seed_satchel_button_pressed() -> void:
	SignalHub.open_seed_satchel.emit(self.get_parent())


func _on_return_to_game_button_pressed() -> void:
	close_menu()

func _on_fruit_satchel_button_pressed() -> void:
	pass # Replace with function body.
