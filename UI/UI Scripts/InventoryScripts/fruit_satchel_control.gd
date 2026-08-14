extends Control

@onready var MyFruitButtons =$FruitSection

func _ready() -> void:
    process_mode = Node.PROCESS_MODE_ALWAYS
    SignalHub.open_fruit_satchel.connect(open_fruit)
    SignalHub.close_fruit_satchel.connect(back_to_hub)

func open_fruit(previous_hud :CanvasLayer) -> void:
    get_tree().paused = true
    previous_hud.visible = false
    get_parent().visible = true
    MyFruitButtons.focus_apples()

func back_to_hub(previous_hud :CanvasLayer, focus_button :Button) -> void:
    get_parent().visible = false
    previous_hud.visible = true
    focus_button.grab_focus()
    GameState.last_menu_on = "Pause Hub"