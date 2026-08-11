class_name PlayerSpawnManager
extends Node


##Helps with spawning Jesse at the correct location
func spawn_jesse(spawn_location :Vector2) -> void:

	#The instance of Jesse to be used
	var jesse: JesseB = get_tree().current_scene.get_node("%Jesse")

	#If the current scene is a new game, spawn Jesse at the default location, otherwise spawn him at the last saved location
	jesse.global_position = spawn_location
