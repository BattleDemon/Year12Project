extends VBoxContainer

var current_realm_code := ""

@onready var realm_dropdown = $realm/realm_dropdown
@onready var realm_name = $realm/realm_name
@onready var realm_color = $realm/realm_color
@onready var ruler_name = $ruler/ruler_name
@onready var ruler_dynasty = $ruler/dynasty
@onready var ruler_title = $ruler/title
@onready var capital_dropdown = $realm_options/capitol_province
@onready var province_list = $regions/ScrollContainer/province_ckeckbox_list
@onready var save_button = $regions/save_realm

func _ready():
	populate_realms()
	save_button.pressed.connect(_save_realm)
	realm_dropdown.item_selected.connect(_on_realm_selected)

func populate_realms():
	realm_dropdown.clear()
	for code in DataManager.realms.keys():
		realm_dropdown.add_item(code)

func _on_realm_selected(index):
	current_realm_code = realm_dropdown.get_item_text(index)
	load_realm(current_realm_code)

func load_realm(code: String):
	var data = DataManager.realms[code]

	realm_name.text = data.get("realm_name", "")
	realm_color.color = Color(data.get("color", "#FFFFFF"))

	var ruler = data.get("ruler", {})
	ruler_name.text = ruler.get("name", "")
	ruler_dynasty.text = ruler.get("dynasty", "")
	ruler_title.text = ruler.get("title", "")

	populate_capitals()
	populate_province_list(data.get("realm", []))

func populate_capitals():
	capital_dropdown.clear()
	for hex in DataManager.regions.keys():
		var region = DataManager.regions[hex]
		capital_dropdown.add_item(region.get("county_code", ""))

func populate_province_list(realm_members: Array):
	province_list.clear()

	for hex in DataManager.regions.keys():
		var region = DataManager.regions[hex]
		var code = region.get("county_code", "")
		province_list.add_item(code)

		var index = province_list.get_item_count() - 1
		province_list.set_item_selectable(index, true)

		if code in realm_members:
			province_list.select(index)

func handle_map_click(hex: String):
	if current_realm_code == "":
		return

	var region = DataManager.regions.get(hex, {})
	var code = region.get("county_code", "")

	for i in province_list.get_item_count():
		if province_list.get_item_text(i) == code:
			if province_list.is_selected(i):
				province_list.deselect(i)
			else:
				province_list.select(i)
			break

func _save_realm():
	if current_realm_code == "":
		return

	var data = DataManager.realms[current_realm_code]

	data["realm_name"] = realm_name.text
	data["color"] = realm_color.color.to_html()

	data["ruler"] = {
		"name": ruler_name.text,
		"dynasty": ruler_dynasty.text,
		"title": ruler_title.text
	}

	var selected_provinces = []
	for i in province_list.get_selected_items():
		selected_provinces.append(province_list.get_item_text(i))

	data["realm"] = selected_provinces

	DataManager.save_realms()
