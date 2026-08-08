class_name ChangingPlantData
extends Resource

@export var plant_name :String
@export var food_needed :int
@export var food_consumed :int
@export var time_until_hungry :float
@export var mood :Plant_manager.PlantMoods
@export var hunger :Plant_manager.PlantHunger




@warning_ignore("unused_signal")
signal change_age

@warning_ignore("unused_signal")
signal change_mood

@warning_ignore("unused_signal")
signal change_hunger

@warning_ignore("unused_signal")
signal take_food_consumed