class_name GettingWateredComponent
extends Area2D

@onready var the_plant = get_parent()

func _on_area_entered(area: Area2D) -> void:
	if area is WateringComponent:
		var watering_component = area as WateringComponent
		the_plant.plant_data.touched += watering_component.water_amount_added

		if the_plant.plant_data.touched >=4:
			the_plant.plant_data.change_age.emit()
			print(the_plant.plant_data.plant_name, " got older is now ", the_plant.plant_data.age , " \n")

		print(the_plant.plant_data.plant_name,  " has been watered  ", the_plant.plant_data.touched, " times\n")

