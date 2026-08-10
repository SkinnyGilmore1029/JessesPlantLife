class_name PlayerUI
extends CanvasLayer


func _ready() -> void:
	if GameState.current_scene == "Title":
		self.visible = false
	SignalHub.change_pumpkin_ui_count.connect(change_pumpkin_ui)
	SignalHub.change_purple_ui_count.connect(change_purple_ui)
	SignalHub.change_pink_ui_count.connect(change_pink_ui)
	SignalHub.change_vine_ui_count.connect(change_vine_ui)


func change_pumpkin_ui(new_count :int) -> void:
	%PumpkinUICount.text = str(new_count)

func change_purple_ui(new__count :int) -> void:
	%PurpleUICount.text = str(new__count)

func change_pink_ui(new_count :int) -> void:
	%PinkUICount.text = str(new_count)

func change_vine_ui(new_count :int) -> void:
	%VineUICount.text = str(new_count)
