extends StaticBody2D

@export var plant_data: ChangingPlantData


func _ready() -> void:
	plant_data.change_age.connect(change_plant_age)

func change_plant_age() -> void:
	if plant_data.touched >= 4:
		plant_data.age += 1
		plant_data.touched = 0
		plant_data.birthday = true
	else:
		plant_data.birthday = false
