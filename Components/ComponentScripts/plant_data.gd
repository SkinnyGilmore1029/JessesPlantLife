class_name ChangingPlantData
extends Resource

@export var plant_name :String
@export var age :int
@export var  time_until_watered :float
@export var last_watered :float
@export var touched :int = 0
@export var birthday :bool = false


@warning_ignore("unused_signal")
signal change_age


