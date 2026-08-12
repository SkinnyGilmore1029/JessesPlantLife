##Main Signal Broadcaster.
class_name  SignalManager
extends Node2D

#Label Counts
#------------------------------------------------------------------------------------------------------------------------------

#                           Menu Label Counts
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#             [Dev note: Don't forget to add to signal dictionary in collectables]

##Helps change the PumpkinCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PumpkinCount
@warning_ignore("unused_signal")
signal change_pumpkin_count(new_count)

##Helps change the PurpleFlowersCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PurpleFlowersCount
@warning_ignore("unused_signal")
signal change_purple_count(new_count)

##Helps change the PinkFlowersCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/PinkFlowersCount
@warning_ignore("unused_signal")
signal change_pink_count(new_count)

##Helps change the VinePlantCount label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer2/GridContainer/VinePlantCount
@warning_ignore("unused_signal")
signal change_vine_count(new_count)


##Helps change the AppleCountLabel label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer/GridContainer/AppleCountLabel
@warning_ignore("unused_signal")
signal change_apple_count

##Helps change the CherriesCountLabel label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer/GridContainer/CherriesCountLabel
@warning_ignore("unused_signal")
signal change_cherry_count

##Helps change the StrawberriesCountLabel label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer/GridContainer/StrawberriesCountLabel
@warning_ignore("unused_signal")
signal change_strawberry_count

##Helps change the MushroomCountLabel label.text to match count from the CollectableComponent.
##Path to Label: VBoxContainer/MarginContainer/GridContainer/MushroomCountLabel
@warning_ignore("unused_signal")
signal change_mushroom_count



#                           Player UI Label Counts
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#             [Dev note: Don't forget to add to signal dictionary in collectables]

##Helps change the PumpkinUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_pumpkin_ui_count(new_count)

##Helps change the PurpleUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_purple_ui_count(new_count)

##Helps change the PinkUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_pink_ui_count(new_count)

##Helps change the VineUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_vine_ui_count(new_count)

##Helps change the AppleUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_apple_ui_count

##Helps change the CherryUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_cherry_ui_count

##Helps change the StrawberryUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_strawberry_ui_count

##Helps change the MushroomUICount label on the player ui.
@warning_ignore("unused_signal")
signal change_mushroom_ui_count

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------------------------------------------------------------------------------------------------------------------------------

#Menu Signals
#------------------------------------------------------------------------------------------------------------------------------
##Helps open the Seed Satchel from the PauseHub.
@warning_ignore("unused_signal")
signal open_seed_satchel

##Helps close the Seed Satchel from the PauseHub.
@warning_ignore(("unused_signal"))
signal close_seed_satchel

##Helps open the Fruit Satchel from the PauseHub.
@warning_ignore(("unused_signal"))
signal open_fruit_satchel

##Helps close the Fruit Satchel from the PauseHub.
@warning_ignore(("unused_signal"))
signal close_fruit_satchel

#------------------------------------------------------------------------------------------------------------------------------