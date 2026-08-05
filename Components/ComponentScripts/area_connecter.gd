extends Area2D

@export var AreaData :AreaConnections

func _on_body_entered(_body: Node2D) -> void:
	if not GameState.player_spawned:
		return

	GameState.player_spawned = false
	if AreaData == null:
		push_warning("No AreaData assigned.")
		return

	if AreaData.send_to.is_empty():
		push_warning("AreaConnector: ", AreaData.Connection_name, " has no destination yet.")
		return

	GameState.hold_spawn_at = AreaData.spawn_at
	GameState.current_scene = AreaData.Connection_name
	get_tree().call_deferred("change_scene_to_file",AreaData.send_to)