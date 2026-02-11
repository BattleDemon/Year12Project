extends VBoxContainer

var current_hex := ""

@onready var county_code = $region_editor_content/region_and_code/county_code
@onready var culture = $region_editor_content/culture/LineEdit
@onready var faith = $region_editor_content/faith/LineEdit
@onready var max_infra = $"region_editor_content/max infrastructure/SpinBox"
@onready var coastal = $region_editor_content/coastal_river/coastal
@onready var river = $region_editor_content/coastal_river/river
@onready var natural_resource = $region_editor_content/resource/LineEdit
@onready var save_button = $region_editor_content/save_region

func _ready():
	save_button.pressed.connect(_save_region)

func load_region(hex: String, data: Dictionary):
	current_hex = hex

	county_code.text = data.get("county_code", "")
	culture.text = data.get("culture", "")
	faith.text = data.get("faith", "")
	max_infra.value = int(data.get("max_infrastrucure", 0))
	coastal.button_pressed = data.get("coastal", false)
	river.button_pressed = data.get("river", false)
	natural_resource.text = data.get("natural_resource", "")

func _save_region():
	if current_hex == "":
		return

	var data = DataManager.regions[current_hex]

	data["county_code"] = county_code.text
	data["culture"] = culture.text
	data["faith"] = faith.text
	data["max_infrastrucure"] = max_infra.value
	data["coastal"] = coastal.button_pressed
	data["river"] = river.button_pressed
	data["natural_resource"] = natural_resource.text

	DataManager.save_regions()
