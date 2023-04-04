extends Enemy


# Called when the node enters the scene tree for the first time.
func _ready():
	enemyMoveSpeed = 100
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move()

func move():
	var player : CharacterBody2D = get_parent().get_node("Player")
	var playerLocation : Vector2 = player.get_global_position()
	var moveVector : Vector2 = playerLocation - get_global_position()
	velocity = moveVector.normalized() * enemyMoveSpeed
	move_and_slide()
	if player:
		print()
	else:
		print("not")

