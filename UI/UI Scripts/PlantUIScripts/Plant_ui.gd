extends Node

var new_hunger_value :float



func _ready() -> void:
	SignalHub.show_plant_ui.connect(open_plant_ui)
	SignalHub.close_plant_ui.connect(close_plant_ui)

func open_plant_ui(the_plant) -> void:
	self.visible = true
	var plants_data = the_plant.plant_data
	%PlantUINameLabel.text = plants_data.plant_name
	%MoodUINameLabel.text = Plant_manager.PlantMoods.keys()[plants_data.mood]
	%HungerUIBar.max_value = float(plants_data.food_needed)
	%FavFoodLabel.text = plants_data.fav_food

	new_hunger_value = float(plants_data.food_needed - plants_data.food_consumed)

	var tween = create_tween()
	tween.tween_property(%HungerUIBar, "value", new_hunger_value, 1.25)

	handle_bar_color(plants_data)

func close_plant_ui() -> void:
	self.visible = false

func handle_bar_color(plants_data) -> void:
	if plants_data.food_needed <= 0:
		return
	var style = %HungerUIBar.get_theme_stylebox("fill")
	var food_percent = float(plants_data.food_consumed) / plants_data.food_needed * 100.0

	if food_percent <= 25:
		style.bg_color = Color.RED
	elif food_percent <= 50:
		style.bg_color = Color.ORANGE
	elif food_percent <= 75:
		style.bg_color = Color.YELLOW
	else:
		style.bg_color = Color.GREEN
