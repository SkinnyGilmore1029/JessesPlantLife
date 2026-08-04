class_name GameInputEvents
extends Node

signal move_ControllerBox_up
signal move_ControllerBox_down
signal option_picked

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	match GameState.current_scene:
		"Title":
			if Input.is_action_just_pressed("move_up"):
				move_ControllerBox_up.emit()
			if Input.is_action_just_pressed("move_down"):
				move_ControllerBox_down.emit()
			if Input.is_action_just_pressed("action"):
				option_picked.emit()
	
		


#made a vector to help move
static var direction: Vector2

static func movement_input() -> Vector2:
	if Input.is_action_pressed("move_left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("move_right"):
		direction = Vector2.RIGHT
	elif Input.is_action_pressed("move_up"):
		direction = Vector2.UP
	elif Input.is_action_pressed("move_down"):
		direction = Vector2.DOWN
	else:
		direction = Vector2.ZERO
	return direction


static func is_movement_input() -> bool:
	if direction == Vector2.ZERO:
		return false
	else:
		return true
