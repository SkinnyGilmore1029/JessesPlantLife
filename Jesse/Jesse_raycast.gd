extends RayCast2D


func is_plant(the_parent)-> bool:
	if "plant_data" in the_parent:
			return true
	return false

func _process(_delta: float) -> void:
	target_position = GameInputEvents.move_raycast()
	# var main_game = self.get_parent().get_parent()

	if is_colliding():
		#collided with the Intractable component of a Node.
		var the_intractable := get_collider()

		#get the parent of the Intractable Node.
		var the_parent = the_intractable.get_parent()

		#lets check what intractable we have
		#if its not a plant do something else for now.
		if is_plant(the_parent):
			SignalHub.show_plant_ui.emit(the_parent)
			SignalHub.can_feed_plant.emit()
	else:
		SignalHub.close_plant_ui.emit()
