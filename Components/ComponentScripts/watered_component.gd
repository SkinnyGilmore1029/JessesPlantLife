extends Area2D

@export var the_plant: StaticBody2D


func _on_body_entered(_body: Node2D) -> void:
	the_plant.watered()
	print(the_plant.plant_data.plant_name, " Plant name\n")
	print(the_plant.plant_data.age, " Plant age\n")
	print(the_plant.plant_data.plant_name,"\n")
	print("has been touched ",the_plant.plant_data.touched, " times")
