extends CharacterBody2D

@export var Ballspeed = 600
var velocityBall = Vector2.ZERO

func _ready():
	randomize()
	velocityBall.x = [-1,1][randi()%2]
	velocityBall.y = [-0.8,0.8][randi()%2]

func _physics_process(delta):
	var collision_objects = move_and_collide(velocityBall*Ballspeed*delta)
	if collision_objects:
		velocityBall = velocityBall.bounce(collision_objects.get_normal())
		Ballspeed += 10
		$CollisionSound.play()
