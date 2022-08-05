extends KinematicBody2D

export var speed = 150

enum {
	Fishing,
	Not_fishing
}

var state = Not_fishing
# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root/Global".register_player(self)


func _physics_process(delta):
	match state:
		Fishing:
			_fishing(delta)
		Not_fishing:
			_not_fishing(delta)
	

func _fishing(delta):
	
	var tes = get_node("res://player/label")
	tes = "currently fishing"
	if Input.is_action_pressed("space_bar"):
		state = Not_fishing
		

func _not_fishing(delta):
	var velocity = Vector2.ZERO 
	if Input.is_action_pressed("move_right"):
		velocity.x += 1 * speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1 * speed
	if Input.is_action_pressed("move_down"):
		velocity.y += 1 * speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1 * speed
	if Input.is_action_pressed("open_menu"):
		get_tree().change_scene("res://EscapeMenu.tscn")
	if Input.is_action_pressed("space_bar"):
		state = Fishing
	if Input.is_action_pressed("Inventory"):
		get_tree().change_scene("res://UI/Inventory.tscn")
	var result = velocity * delta
	move_and_collide(result)
	
func _get_position():
	return self.global_position.x
