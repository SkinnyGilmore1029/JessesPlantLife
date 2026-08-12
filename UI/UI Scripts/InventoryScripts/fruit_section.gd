class_name FruitInventory
extends PanelContainer

func _ready() -> void:
    SignalHub.change_apple_count.connect(handle_apple_count)
    SignalHub.change_cherry_count.connect(handle_cherry_count)
    SignalHub.change_strawberry_count.connect(handle_strawberry_count)
    SignalHub.change_mushroom_count.connect(handle_mushroom_count)

##The function emitted in the change_apple_count signal
##Changes the text current count.
func handle_apple_count(new_count :int) -> void:
    %AppleCountLabel.text = str(new_count)

##The function emitted in the change_cherry_count signal
##Changes the text current count.
func handle_cherry_count(new_count :int) -> void:
    %CherriesCountLabel.text = str(new_count)

##The function emitted in the change_strawberry_count signal
##Changes the text current count.
func handle_strawberry_count(new_count :int) -> void:
    %StrawberriesCountLabel.text = str(new_count)


##The function emitted in the change_mushroom_count signal
##Changes the text current count.
func handle_mushroom_count(new_count :int) -> void:
    %MushroomCountLabel.text = str(new_count)


##Sets the focus to the Apple Button in the Fruit Satchel Menu
func focus_apples() -> void:
    %AppleNameButton.grab_focus()
    GameState.last_menu_on = "Fruit Satchel"