extends Control

@onready var MySeedButtons = $SeedSection

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    SignalHub.open_seed_satchel.connect(open_seed)
    SignalHub.close_seed_satchel.connect(back_to_hub)

##used for the open_seed_satchel signal need previous CanvasLayer
##Currently from pause menu but might add quick buttons so might not be.
func open_seed(previous_hud :CanvasLayer) -> void:
    get_tree().paused = true
    previous_hud.visible = false
    get_parent().visible = true
    MySeedButtons.focus_pumpkin()

func back_to_hub(previous_hud :CanvasLayer, focus_button :Button) -> void:
    get_parent().visible = false
    previous_hud.visible = true
    focus_button.grab_focus()
    GameState.last_menu_on = "Pause Hub"