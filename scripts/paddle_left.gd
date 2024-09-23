extends CharacterBody2D

var speed = 10

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("upLeftSide"):
		velocity.y -= 1
	if Input.is_action_pressed("downLeftSide"):
		velocity.y += 1
	move_and_collide(velocity*speed)
