extends TextureRect


func set_mood(plant_mood) -> void:
	match plant_mood:
		Plant_manager.PlantMoods.HAPPY:
			texture = preload("res://Assets/Pictures/Plants/happy symbol.png")
		Plant_manager.PlantMoods.MEH:
			texture = preload("res://Assets/Pictures/Plants/contnt symbol.png")
		Plant_manager.PlantMoods.SAD:
			pass
		Plant_manager.PlantMoods.ANGRY:
			texture =preload("res://Assets/Pictures/Plants/angry symbole.png")