extends Node2D

var save_to_path = "user://ItemData_CurrInventory"

func _on_Resume_pressed():
	#var pre = $"/root/player/CharScript"._get_position()
	#print(pre)
	get_tree().change_scene("res://Main.tscn")
	
	
func _on_Options_pressed():
	pass # Replace with function body.


func _on_QuitGame_pressed():
	
	var data = {
	"TextRec1": {"item": "4001"},
	"TextRec2": {"item": null},
	"TextRec3": {"item": null},
	"TextRec4": {"item": null}
	}
	
	var file = File.new()
	file.open(save_to_path, file.WRITE)
	file.store_var(data)
	file.close()
	
	get_tree().quit()


