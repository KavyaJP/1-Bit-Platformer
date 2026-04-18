extends NodeState

@export var player: Player
@export var animated_sprite: AnimatedSprite2D

func _on_enter() -> void:
	pass

func _on_process(_delta : float) -> void:
	pass

func _on_physics_process(_delta : float) -> void:
	animated_sprite.play("idle")

func _on_next_transitions() -> void:
	if InputManager.is_movement():
		transition.emit("walk")

func _on_exit() -> void:
	animated_sprite.stop()
