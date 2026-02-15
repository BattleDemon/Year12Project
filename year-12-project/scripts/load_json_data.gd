extends Node

var color_region_data: Variant
var region_data: Variant
var realm_data: Variant

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color_region_data = load_json_files("res://data/color_region.json")
	region_data = load_json_files("res://data/region_data.json")
	realm_data = load_json_files("res://data/realm_data.json")


func load_json_files(file_path: String) -> Variant:
	if not FileAccess.file_exists(file_path):
		print("Error: Json no exist")
		return null
		
	var file_content := FileAccess.get_file_as_string(file_path)
	
	var json_result : Variant = JSON.parse_string(file_content)
	
	if json_result == null:
		print("failed to parse data")
		return null
		
	return json_result
