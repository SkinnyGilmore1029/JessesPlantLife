class_name Plant_manager
extends Resource

var plant_type :PlantTypes.ThePlants

@export var plant_name :String
@export var age :int
@export var  time_until_watered :float
@export var last_watered :float
@export var touched :int

func show_stats()->void:
	see_plant_type()
	print(plant_name)
	print("--------------")
	print("Age: ", age)
	print("Time Until Water: ", time_until_watered)
	print("Last Watered: ", last_watered)


func see_plant_type() ->void:
	print("Plant Type: ", plant_type)