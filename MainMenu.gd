extends Node2D

onready var button: Button = self.get_child(4)

var file_path = "user://ItemData_CurrInventory.json"
var file = File.new()

func _process(delta):
	if file.file_exists(file_path):
		button.disabled = false

func _on_Play_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_Continue_pressed():
	
	if file.file_exists(file_path):
		var error = file.open(file_path, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
	print(PlayerData)

func _on_Exit_pressed():
	get_tree().quit(3)
