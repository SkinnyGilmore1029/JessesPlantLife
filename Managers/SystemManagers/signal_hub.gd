##Main Signal Broadcaster.
class_name  SignalManager
extends Node2D


##Changes the PumpkinCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PumpkinCount
@warning_ignore("unused_signal")
signal change_pumpkin_count(new_count)

##Changes the PurpleFlowersCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PurpleFlowersCount
@warning_ignore("unused_signal")
signal change_purple_count(new_count)

##Changes the PinkFlowersCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PinkFlowersCount
@warning_ignore("unused_signal")
signal change_pink_count(new_count)

##Changes the VinePlantCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/VinePlantCount
@warning_ignore("unused_signal")
signal change_vine_count(new_count)

##Changes the PumpkinUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_pumpkin_ui_count(new_count)

##Changes the PurpleUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_purple_ui_count(new_count)

##Changes the PinkUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_pink_ui_count(new_count)

##Changes the VineUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_vine_ui_count(new_count)

@warning_ignore("unused_signal")
signal open_seed_satchel