class_name GameInputEvents
extends Node


# Made a vector to help move
static var direction: Vector2


static func movement_input() -> Vector2:
	direction = Vector2.ZERO

	if Input.is_action_pressed("move_left"):
		direction.x -= 1

	if Input.is_action_pressed("move_right"):
		direction.x += 1

	if Input.is_action_pressed("move_up"):
		direction.y -= 1

	if Input.is_action_pressed("move_down"):
		direction.y += 1

	return direction.normalized()


static func is_movement_input() -> bool:
	if direction == Vector2.ZERO:
		return false
	else:
		return true