class_name AreaConnectors
extends Area2D

@export var AreaData :AreaConnections

func _on_body_entered(body: Node2D) -> void:
	if body is JesseB:
		var new_scene := load(AreaData.send_to) as PackedScene
		AreaManager.call_deferred("change_area", new_scene, AreaData.spawn_at)

