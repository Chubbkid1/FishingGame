extends Node

var inv_data = {}

func _ready():
	var inv_data_file = File.new()
	inv_data_file.open("user://ItemData_CurrInventory.json", File.READ)

	var inv_data_json = JSON.parse(inv_data_file.get_as_text())
	inv_data_file.close()
	inv_data = inv_data_json.result

