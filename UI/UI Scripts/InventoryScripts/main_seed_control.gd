extends Control

@onready var MySeedButton = $SeedSection

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    SignalHub.open_seed_satchel.connect(open_seed)

##used for the open_seed_satchel signal need previous CanvasLayer
##Currently from pause menu but might add quick buttons so might not be.
func open_seed(previous_hud :CanvasLayer) -> void:
    get_tree().paused = true
    previous_hud.visible = false
    get_parent().visible = true

func back_to_hub(previous_hud :CanvasLayer) -> void:
    get_parent().visible = false
    previous_hud.visible = true