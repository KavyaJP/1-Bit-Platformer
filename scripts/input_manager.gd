class_name InputManager
extends Node

static func is_movement() -> bool:
	if Input.is_action_pressed("forward") or Input.is_action_pressed("backward"):
		return true
	return false

static func get_direction() -> Vector2:
	var direction: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("forward"):
		direction = Vector2.RIGHT
	if Input.is_action_pressed("backward"):
		direction = Vector2.LEFT
	return direction

static func is_jump() -> bool:
	if Input.is_action_just_pressed("jump"):
		return true
	return false
