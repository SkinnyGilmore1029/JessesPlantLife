extends StaticBody2D

@export var plant_data: ChangingPlantData

func _ready() -> void:
	#plant_data.change_age.connect(change_plant_age)
	plant_data.change_mood.connect(change_plant_mood)
	plant_data.change_hunger.connect(change_hunger_state)
	print(
	Plant_manager.PlantMoods.keys()[plant_data.mood],
	" Mood | ",
	Plant_manager.PlantHunger.keys()[plant_data.hunger],
	" Hunger | ",
	plant_data.food_consumed,
	" Food Consumed | ",
	plant_data.food_needed,
	" Food Needed"
)

func change_plant_age() -> void:
	pass

func change_plant_mood() -> void:
	match plant_data.hunger:
		Plant_manager.PlantHunger.FULL:
			plant_data.mood = Plant_manager.PlantMoods.HAPPY
		Plant_manager.PlantHunger.CONTENT:
			plant_data.mood = Plant_manager.PlantMoods.MEH
		Plant_manager.PlantHunger.HUNGRY:
			plant_data.mood = Plant_manager.PlantMoods.SAD
		Plant_manager.PlantHunger.STARVING:
			plant_data.mood = Plant_manager.PlantMoods.ANGRY

func change_hunger_state() -> void:
	#if it is full we don't need to do anything
	if plant_data.food_needed <= 0:
		return

	var food_percent = float(plant_data.food_consumed) / plant_data.food_needed * 100.0

	if food_percent <= 25:
		plant_data.hunger = Plant_manager.PlantHunger.STARVING
	elif food_percent <= 50:
		plant_data.hunger = Plant_manager.PlantHunger.HUNGRY
	elif food_percent <= 75:
		plant_data.hunger = Plant_manager.PlantHunger.CONTENT
	else:
		plant_data.hunger = Plant_manager.PlantHunger.FULL
	plant_data.change_mood.emit()