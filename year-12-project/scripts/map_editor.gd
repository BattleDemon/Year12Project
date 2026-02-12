extends Node2D

@onready var map_sprite : Sprite2D = $MapTexture

var map_image : Image
var county_data : Dictionary
var realm_data : Dictionary

func _ready():
	load_json()
	load_map_image()

func load_map_image():
	var texture = load("res://assets/goodMap.png")
	map_sprite.texture = texture
	
	map_image = texture.get_image()

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var world_pos = get_global_mouse_position()
		var local_pos = map_sprite.to_local(world_pos)
		
		if local_pos.x < 0 or local_pos.y < 0:
			return
		
		var pixel_color = map_image.get_pixelv(local_pos)
		print(pixel_color.to_html())


func select_county_by_color(hex_color : String):
	var county_code = color_lookup.get(hex_color.to_upper())
	
	if county_code:
		open_county_editor(county_code)
			
func find_realm_of_county(county_code : String) -> String:
	for realm_code in realm_data.keys():
		var realm = realm_data[realm_code]
		
		if county_code in realm["realm"]:
			return realm_code
			
	return ""
	
func open_county_editor(county_code):
	var county = county_data[county_code]
	var realm_code = find_realm_of_county(county_code)
	
	$UI/CountyPanel.load_data(county_code, county)
	$UI/RealmPanel.load_data(realm_code, realm_data[realm_code])

func load_json():
	county_data = load_json_file("res://data/country_data.json")
	realm_data = load_json_file("res://data/realm_data.json")
	
	build_color_lookup()
	
func load_json_file(path: String) -> Dictionary:
	if not FileAccess.file_exists(path):
		push_error("File not found: " + path)
		return {}
	
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	file.close()
	
	var result = JSON.parse_string(content)
	
	if typeof(result) != TYPE_DICTIONARY:
		push_error("Invalid JSON in file: " + path)
		return {}
	
	return result

var color_lookup : Dictionary = {}

func build_color_lookup():
	color_lookup.clear()
	
	for county_code in county_data.keys():
		var color = county_data[county_code]["color_code"].to_upper()
		color_lookup[color] = county_code
