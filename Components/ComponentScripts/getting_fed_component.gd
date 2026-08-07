class_name GettingFedComponent
extends Area2D

@onready var the_plant = get_parent()

func _on_area_entered(area: Area2D) -> void:
	if area is FeedingComponent:
		var feeding_component = area as FeedingComponent
		the_plant.plant_data.food_consumed += feeding_component.feed_amount_added

		if the_plant.plant_data.food_consumed >= the_plant.plant_data.food_needed:
			print("The plant is full and happy!")

		the_plant.plant_data.change_hunger.emit()


