extends StaticBody2D

@export var plant_data: Plant_manager



func _ready() -> void:
	pass


func watered() -> void:
	if plant_data.touched == 3:
		plant_data.age +=1
		plant_data.touched = 0
