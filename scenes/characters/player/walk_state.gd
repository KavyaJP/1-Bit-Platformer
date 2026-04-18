extends NodeState

@export var player: Player
@export var animated_sprite: AnimatedSprite2D

func _on_enter() -> void:
	pass

func _on_process(_delta : float) -> void:
	pass

func _on_physics_process(_delta : float) -> void:
	var direction: Vector2 = InputManager.get_direction()
	
	if direction == Vector2.LEFT:
		animated_sprite.flip_h = true
		animated_sprite.play("walk_right")
	elif direction == Vector2.RIGHT:
		animated_sprite.flip_h = false
		animated_sprite.play("walk_right")
	
	player.velocity.x = direction.x * player.NORMAL_SPEED
	player.move_and_slide()

func _on_next_transitions() -> void:
	if not InputManager.is_movement():
		transition.emit("idle")

func _on_exit() -> void:
	animated_sprite.stop()
