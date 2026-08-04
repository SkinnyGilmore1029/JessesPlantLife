class_name PlayerSpawnManager
extends Node

##JesseB class object
var Jesse = preload("res://Jesse/Jesse.tscn")

func spawn_jesse(parent: Node) -> Node2D:
	
	##The instance of Jesse to be used
	var jesse = Jesse.instantiate()
	
	parent.add_child(jesse)
	await parent.get_tree().create_timer(0.1).timeout
	if GameState.current_scene == "New Game":
		
		jesse.global_position = Vector2(976.0,112.0)
		
	else:
		jesse.global_position = GameState.hold_spawn_at
		
	GameState.player_spawned = true
	return jesse
