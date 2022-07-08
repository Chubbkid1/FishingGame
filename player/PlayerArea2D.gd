extends Area2D

# speed is calculated in pixels per second
#export mean that we can change the value outside of the script
export var speed = 150

var screen_size
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#get viewport gives us screen size 
func _ready():
	screen_size = get_viewport_rect().size 
	pass # Replace with function body.


# func _process is made to move our character.
# velocity is the players movement variable.
# Clamp makes it so that the player cannot leave the screen.

func _process(delta):
	var velocity = Vector2.ZERO 
	if Input.is_action_pressed("move_right"):
		velocity.x += 1 
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity -= 1
		
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
