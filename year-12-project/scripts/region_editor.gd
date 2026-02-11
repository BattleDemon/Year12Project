extends VBoxContainer

var current_hex := ""

@onready var county_code = $region_and_code/county_code
@onready var culture = $culture/LineEdit
@onready var faith = $faith/LineEdit
@onready var max_infra = $"max infrastructure/SpinBox"
@onready var coastal = $coastal_river/coastal
@onready var river = $coastal_river/river
@onready var natural_resource = $resource/LineEdit
@onready var save_button = $save_region

func _ready():
	save_button.pressed.connect(_save_region)

func load_region(hex: String, data: Dictionary):
	if current_hex != "" and current_hex != hex:
		_save_region()

	current_hex = hex

	county_code.text = data.get("county_code", "")
	culture.text = data.get("culture", "")
	faith.text = data.get("faith", "")
	max_infra.value = int(data.get("max_infrastrucure", 0))
	coastal.button_pressed = data.get("coastal", false)
	river.button_pressed = data.get("river", false)
	natural_resource.text = data.get("natural_resource", "")
	
	var code = data.get("county_code", "")
	var owner = find_realm_owner(code)
	$"../realm_editor/realm_editor_content/realm_owner".text = "Realm: " + owner
	
func find_realm_owner(county_code: String) -> String:
	for realm_code in DataManager.realms.keys():
		var realm = DataManager.realms[realm_code]
		if county_code in realm.get("realm", []):
			return realm_code
	return "Independent"


func _save_region():
	if county_code.text.length() != 3:
		push_warning("County code must be 3 letters")
		return
	
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
