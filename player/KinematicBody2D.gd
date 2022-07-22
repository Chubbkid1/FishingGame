extends KinematicBody2D

export var speed = 150

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	var velocity = Vector2.ZERO 
	if Input.is_action_pressed("move_right"):
		velocity.x += 1 * speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1 * speed
	if Input.is_action_pressed("move_down"):
		velocity.y += 1 * speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1 * speed
		
	var result = velocity * delta
	move_and_collide(result)
	
