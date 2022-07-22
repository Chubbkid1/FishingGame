extends Area2D

#export mean that we can change the value outside of the script aka Public
export var speed = 150

var screen_size

#get viewport gives us screen size 
func _ready():
	screen_size = get_viewport_rect().size 
	pass # Replace with function body.

# this function makes our character move, pretty straight forward
# the "clamp" funciton makes it so that the charachter cannot move outside of the screen.
func _process(delta):
	var velocity = Vector2.ZERO 
	if Input.is_action_pressed("move_right"):
		velocity.x += 1 * speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1 * speed
	if Input.is_action_pressed("move_down"):
		velocity.y += 1 * speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1 * speed
		
	position += velocity * delta
	#position.x = clamp(position.x, 0, screen_size.x)
	#position.y = clamp(position.y, 0, screen_size.y)

