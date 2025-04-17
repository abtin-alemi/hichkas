extends Area2D
@onready var timer: Timer = $"../Timer"

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'CharacterBody2D':
		timer.start(10)
		print('entierd')
