extends NodeState


@export var jesse: JesseB


var direction: Vector2

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	direction = GameInputEvents.movement_input()
	


func _on_next_transitions() -> void:
	transition.emit("Walk")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
	#animated_sprite_2d.stop()
