class_name GettingFedComponent
extends Area2D

@onready var the_plant = get_parent()

func _on_area_entered(area: Area2D) -> void:
	if area is FeedingComponent:
		var feeding_component = area as FeedingComponent
		the_plant.plant_data.touched += feeding_component.feed_amount_added

		if the_plant.plant_data.touched >=4:
			the_plant.plant_data.change_age.emit()

