class_name GameInputEvents
extends Node


# Made a vector to help move
static var direction :Vector2
static var change_coord :int = 30
static var new_position :Vector2 = Vector2(0, change_coord)


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
	return true

static func open_menu_hud() -> bool:
	if Input.is_action_just_pressed("Menu"):
		return true
	return false

static func close_menu_hub() -> bool:
	if Input.is_action_just_pressed("back"):
		return true
	return false

#Only asking about this function nothing else
static func move_raycast()-> Vector2:

	if Input.is_action_pressed("move_left"):
		new_position = Vector2(-change_coord, 0)

	if Input.is_action_pressed("move_right"):
		new_position = Vector2(change_coord, 0)

	if Input.is_action_pressed("move_up"):
		new_position = Vector2(0, -change_coord)

	if Input.is_action_pressed("move_down"):
		new_position = Vector2(0, change_coord)

	return new_position