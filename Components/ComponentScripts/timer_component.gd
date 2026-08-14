class_name TimerComponent
extends Timer

var plants_data: ChangingPlantData

func _ready() -> void:
	plants_data = get_parent().plant_data
	wait_time = plants_data.time_until_hungry
	start()

func _on_timeout() -> void:
	SignalHub.take_food_consumed.emit()