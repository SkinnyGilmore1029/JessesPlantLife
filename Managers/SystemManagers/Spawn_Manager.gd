class_name PlayerSpawnManager
extends Node

##JesseB class object
var Jesse = preload("res://Jesse/Jesse.tscn")

##Helps with spawning Jesse at the correct location
func spawn_jesse(parent: Node) -> void:

	#The instance of Jesse to be used
	var jesse = Jesse.instantiate()

	#If the current scene is a new game, spawn Jesse at the default location, otherwise spawn him at the last saved location
	if GameState.current_scene == "New Game":
		jesse.global_position = Vector2(976.0,112.0)
		parent.add_child(jesse)


	else:
		jesse.global_position = GameState.hold_spawn_at
		parent.add_child(jesse)

	GameState.player_spawned = true
