class_name Plant_manager
extends Resource

@export var plant_name :String
@export var age :int = 0
@export var  time_until_watered :float = 0.0
@export var last_watered :float = 0.0
@export var touched :int

func show_stats()->void:
	print(plant_name)
	print("--------------")
	print("Age: ", age)
	print("Time Until Water: ", time_until_watered)
	print("Last Watered: ", last_watered)
