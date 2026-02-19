extends Node2D

@onready var map_texture = $MapTexture
@onready var ui = $UI/Container
@onready var save_all_button = $UI/Container/SaveAllButton

var current_region_code : String = ""

func _ready() -> void:
	map_texture.selectedRegionCode.connect(_on_region_selected)
	ui.save_region_requested.connect(_on_save_region)
	save_all_button.pressed.connect(_on_save_all_pressed)
	
func _on_region_selected(region_code):
	if current_region_code != "":
		ui.force_push_current_to_memory(current_region_code)

	current_region_code = region_code
	ui.load_region_data(region_code, LoadJsonData.region_data[region_code])


func _on_save_region(updated_data):

	if current_region_code == "":
		return

	var region = LoadJsonData.region_data[current_region_code]

	for key in updated_data:
		if key == "county_names":
			for culture in updated_data["county_names"]:
				region["county_names"][culture] = updated_data["county_names"][culture]
		else:
			region[key] = updated_data[key]
			
func _on_save_all_pressed():
	LoadJsonData.save_region_data()
	print("All changes written to file.")
