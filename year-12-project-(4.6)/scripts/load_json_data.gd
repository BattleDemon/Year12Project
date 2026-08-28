extends Node

var color_region_data: Variant
var region_data: Variant
var realm_data: Variant

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	region_data = load_json_files("res://data/region_data.json")
	realm_data  = load_json_files("res://data/realm_data.json")
	
	color_region_data = {}
	for code in region_data:
		var color_code = region_data[code].get("color_code", "")
		if color_code != "":
			color_region_data[color_code.to_upper()] = code
	
	print("color_region_data size: ", color_region_data.size())
	print("Sample entry: ", color_region_data.keys()[0], " → ", color_region_data.values()[0])
	print("Has son color: ", color_region_data.has("#B5ED38"))


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
	
func save_region_data():
	var path = "res://data/region_data.json"
	
	var file = FileAccess.open(path, FileAccess.WRITE)
	if file:
		file.store_string(JSON.stringify(region_data, "\t"))
		file.close()
		print("Region data saved.")
	else:
		print("Failed to save region data.")
