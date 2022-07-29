extends Node2D


func _on_Resume_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_Options_pressed():
	pass # Replace with function body.


func _on_QuitGame_pressed():
	get_tree().exit(3)
