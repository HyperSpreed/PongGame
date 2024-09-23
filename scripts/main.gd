extends Node2D

var PlayerScore = 0
var OpponentScore = 0

func _on_area_2d_left_side_body_entered(body):
	$Ball.position = Vector2(640,360)
	OpponentScore += 1
	print('Golo do Computador')
	$Ball.Ballspeed = 600
	$ScoreSound.play()


func _on_area_2d_right_side_body_entered(body):
	$Ball.position = Vector2(640,360)
	PlayerScore += 1
	print('Golo do Jogador')
	$Ball.Ballspeed = 600
	$ScoreSound.play()

func _process(delta):
	$PlayerScore.text = str(PlayerScore)
	$OpponentScore.text = str(OpponentScore)
	
	if(OpponentScore>=7 || PlayerScore>=7):
		PlayerScore = 0
		OpponentScore = 0
