extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@export var direction = Vector2.ZERO
@export var speed = 100



func _process(delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		animated_sprite_2d.flip_h = false
		direction.x += 1
	if Input.is_action_pressed("move_right"):
		animated_sprite_2d.flip_h = true
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		velocity = direction * speed
		$AnimatedSprite2D.play('run')

	else:
		animated_sprite_2d.play('idle')
		velocity = Vector2.ZERO
		
	
	move_and_slide()
