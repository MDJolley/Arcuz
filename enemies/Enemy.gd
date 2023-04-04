extends CharacterBody2D
class_name Enemy

var enemyHP : float
var enemyDamage : float
var enemyMoveSpeed : float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func takeDamage(damage : float):
	enemyHP -= damage
	if enemyHP <= 0: die()

func die():
	self.queue_free()

func move():
	assert(false, "Child must implement.")


