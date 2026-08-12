##The class that handles the SeedSection UI Nodes.
class_name SeedInventory
extends PanelContainer

func _ready() -> void:
	SignalHub.change_pumpkin_count.connect(handle_pumpkin_count)
	SignalHub.change_purple_count.connect(handle_purple_count)
	SignalHub.change_pink_count.connect(handle_pink_count)
	SignalHub.change_vine_count.connect(handle_vine_count)
	#print("signals connected")

##The function emitted in the change_pumpkin_count signal
##Changes the text current count.
func handle_pumpkin_count(new_count: int) -> void:
	%PumpkinCount.text = str(new_count)

##The function emitted in the change_purple_count signal
##Changes the text current count.
func handle_purple_count(new_count: int) -> void:
	%PurpleFlowersCount.text = str(new_count)

##The function emitted in the change_pink_count signal
##Changes the text current count.
func handle_pink_count(new_count: int) -> void:
	%PinkFlowersCount.text = str(new_count)

##The function emitted in the change_vine_count signal
##Changes the text current count.
func handle_vine_count(new_count: int) -> void:
	%VinePlantCount.text = str(new_count)

#Gets the focus of the Pumpkin Button in the Seed Satchel.
func focus_pumpkin()->void:
	%SeedSatchelPumpkin.grab_focus()
	GameState.last_menu_on = "Seed Satchel"
