class_name PlayerUI
extends CanvasLayer


func _ready() -> void:
	if GameState.current_scene == "Title":
		self.visible = false
	SignalHub.change_pumpkin_ui_count.connect(change_pumpkin_ui)
	SignalHub.change_purple_ui_count.connect(change_purple_ui)
	SignalHub.change_pink_ui_count.connect(change_pink_ui)
	SignalHub.change_vine_ui_count.connect(change_vine_ui)
	SignalHub.change_apple_ui_count.connect(change_apple_ui)
	SignalHub.change_cherry_ui_count.connect(change_cherry_ui)
	SignalHub.change_strawberry_ui_count.connect(change_strawberry_ui)
	SignalHub.change_mushroom_ui_count.connect(change_mushroom_ui)


##The function emitted in the change_pumpkin_ui_count signal
##Changes the text current count.
func change_pumpkin_ui(new_count :int) -> void:
	%PumpkinUICount.text = str(new_count)

##The function emitted in the change_purple_ui_count signal
##Changes the text current count.
func change_purple_ui(new__count :int) -> void:
	%PurpleUICount.text = str(new__count)

##The function emitted in the change_pink_ui_count signal
##Changes the text current count.
func change_pink_ui(new_count :int) -> void:
	%PinkUICount.text = str(new_count)

##The function emitted in the change_vine_ui_count signal
##Changes the text current count.
func change_vine_ui(new_count :int) -> void:
	%VineUICount.text = str(new_count)

##The function emitted in the change_apple_ui_count signal
##Changes the text current count.
func change_apple_ui(new_count :int) -> void:
	%ApplesCountUILabel.text = str(new_count)

##The function emitted in the change_cherry_ui_count signal
##Changes the text current count.
func change_cherry_ui(new_count :int) -> void:
	%CherriesCountUILabel.text = str(new_count)

##The function emitted in the change_strawberry_ui_count signal
##Changes the text current count.
func change_strawberry_ui(new_count :int) -> void:
	%StrawberriesCountUILabel.text = str(new_count)

##The function emitted in the change_mushroom_ui_count signal
##Changes the text current count.
func change_mushroom_ui(new_count :int) -> void:
	%MushroomsCountUILabel.text = str(new_count)