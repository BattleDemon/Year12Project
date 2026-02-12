extends Node

var regions: Dictionary = {}
var realms: Dictionary = {}

const REGION_PATH = "res://data/country_data_transformed.json"
const REALM_PATH = "res://data/realm_data.json"

func _ready():
	load_all()

func load_all():
	regions = load_json(REGION_PATH)
	realms = load_json(REALM_PATH)

func load_json(path: String) -> Dictionary:
	if not FileAccess.file_exists(path):
		return {}
	var file = FileAccess.open(path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	file.close()
	return data if typeof(data) == TYPE_DICTIONARY else {}

func save_regions():
	save_json(REGION_PATH, regions)

func save_realms():
	save_json(REALM_PATH, realms)

func save_json(path: String, data: Dictionary):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(JSON.stringify(data, "\t"))
	file.close()

func get_region_by_hex(hex: String) -> Dictionary:
	if regions.has(hex):
		return regions[hex]
	return {}
