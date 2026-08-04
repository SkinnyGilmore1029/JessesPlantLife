extends NodeState

@export var jesse: JesseB
@export var speed:int = 200


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	var direction: Vector2 = GameInputEvents.movement_input()
	
	
	jesse.velocity = direction * speed
	jesse.move_and_slide()
	
	
	
	if direction != Vector2.ZERO:
		jesse.current_direction = direction.normalized()


func _on_next_transitions() -> void:
	if !GameInputEvents.is_movement_input():
		transition.emit('Idle')


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	#animated_sprite_2d.stop()
	pass
