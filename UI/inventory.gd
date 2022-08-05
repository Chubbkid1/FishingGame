extends Control


var template_inventory_slot = preload("res://UI/Templates/InventorySlot.tscn")

onready var gridcontainer = get_node("Background/MarginContainer/VBoxContainer/ScrollContainer/GridContainer")


func _ready():
	for i in PlayerData.inv_data.keys():
		var inventory_slot_new = template_inventory_slot.instance()
		if PlayerData.inv_data[i]["item"] != null:
			var item_name = GameData.item_data[str(PlayerData.inv_data[i]["item"])]["Name"]
			print(item_name)
			var icon_texture = load("res://Assets/itemIcons" + item_name + ".png")
			inventory_slot_new.get_node("Icon").set_texture(icon_texture)
		gridcontainer.add_child(inventory_slot_new, true)


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Main.tscn")
