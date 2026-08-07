class_name ChangingPlantData
extends Resource

@export var plant_name :String
@export var age :int
@export var  time_until_feed :float
@export var last_fed :float
@export var food_needed :int
@export var food_consumed :int
@export var mood :Plant_manager.PlantMoods
@export var hunger :Plant_manager.PlantHunger




@warning_ignore("unused_signal")
signal change_age

@warning_ignore("unused_signal")
signal change_mood

@warning_ignore("unused_signal")
signal change_hunger

