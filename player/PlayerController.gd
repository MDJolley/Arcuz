extends CharacterBody2D
class_name Player

var playerHP : float = 10.0
var playerMoveSpeed : float = 300.0
@onready var playerSprite = $PlayerSprite


func _ready():
	playerSprite.set_modulate(Color.ROSY_BROWN)

func _physics_process(delta):

	var vertical = Input.get_axis("movePlayerUp", "movePlayerDown")
	if vertical:
		velocity.y = vertical * playerMoveSpeed
	else:
		velocity.y = move_toward(velocity.y, 0, playerMoveSpeed)

	var horizontal = Input.get_axis("movePlayerLeft", "movePlayerRight")
	if horizontal:
		velocity.x = horizontal * playerMoveSpeed
	else:
		velocity.x = move_toward(velocity.x, 0, playerMoveSpeed)

	move_and_slide()
