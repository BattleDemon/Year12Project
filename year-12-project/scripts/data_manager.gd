extends Node

var regions = {}
var realms = {}

func load_data():
	regions = load_json("res://data/country_data_transformed.json")
	realms = load_json("res://data/realm_data.json")

func load_json(path):
	var file = FileAccess.open(path, FileAccess.READ)
	var text = file.get_as_text()
	file.close()
	return JSON.parse_string(text)

func save_regions():
	save_json("res://data/country_data_transformed.json", regions)

func save_realms():
	save_json("res://data/realm_data.json", realms)

func save_json(path, data):
	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(JSON.stringify(data, "\t"))
	file.close()
