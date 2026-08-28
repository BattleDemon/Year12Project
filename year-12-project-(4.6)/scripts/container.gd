extends Control


@onready var label = $Label 

signal save_region_requested(updated_data)

@onready var region_code_edit = $Editors/RegionEditor/RegionCode/TextEdit

@onready var culture_edit = $Editors/RegionEditor/CultureAndFaith/CultureEdit
@onready var faith_edit = $Editors/RegionEditor/CultureAndFaith/FaithEdit

@onready var germanic_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/GermanicEdit
@onready var roman_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/RomanEdit
@onready var gaelic_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/GaelicEdit
@onready var brithonic_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/BrithonicEdit
@onready var gothic_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/GothicEdit
@onready var basque_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/BasqueEdit
@onready var hispanic_edit = $Editors/RegionEditor/RegionNames/VBoxContainer/HispanicEdit

@onready var max_infra = $Editors/RegionEditor/Infrastructure/MaxInfrastructureSelect

@onready var coastal_check = $Editors/RegionEditor/Terrain/CoastalCheck
@onready var river_check = $Editors/RegionEditor/Terrain/RiverCheck

@onready var save_button = $Editors/RegionEditor/Save/SaveButton


func update_label(region_code):
	label.text = "Selected Region Code: " + str(region_code)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_save_button_pressed() -> void:
	var updated_data = {
		"culture": culture_edit.text,
		"faith": faith_edit.text,
		"max_infrastrucure": str(max_infra.value),
		"coastal": "T" if coastal_check.button_pressed else "F",
		"river": "T" if river_check.button_pressed else "F",
		"county_names": {
			"Germanic": germanic_edit.text,
			"Roman": roman_edit.text,
			"gaelic": gaelic_edit.text,
			"brithonic": brithonic_edit.text,
			"gothic": gothic_edit.text,
			"basque": basque_edit.text,
			"hispanic": hispanic_edit.text
		}
	}

	save_region_requested.emit(updated_data)

func load_region_data(region_code: String, region_data: Dictionary):

	if region_data == null:
		return
	
	region_code_edit.text = region_code
	
	# Culture / Faith
	culture_edit.text = region_data.get("culture", "")
	faith_edit.text = region_data.get("faith", "")

	# County Names
	var names = region_data.get("county_names", {})

	germanic_edit.text = names.get("Germanic", "")
	roman_edit.text = names.get("Roman", "")
	gaelic_edit.text = names.get("gaelic", "")
	brithonic_edit.text = names.get("brithonic", "")
	gothic_edit.text = names.get("gothic", "")
	basque_edit.text = names.get("basque", "")
	hispanic_edit.text = names.get("hispanic", "")

	# Infrastructure
	max_infra.value = int(region_data.get("max_infrastrucure", 0))

	# Booleans
	coastal_check.button_pressed = region_data.get("coastal", "F") == "T"
	river_check.button_pressed = region_data.get("river", "F") == "T"

	# Terrain OptionButton
	var terrain_value = region_data.get("terrain", "")
	_select_option_by_text($Editors/RegionEditor/Terrain/TerrainOptions, terrain_value)

	# Natural Resources
	var resource_value = region_data.get("natural_resource", "")
	_select_option_by_text($Editors/RegionEditor/Terrain/ResourcesOptions, resource_value)

func _select_option_by_text(option_button: OptionButton, text_value: String):
	for i in option_button.item_count:
		if option_button.get_item_text(i) == text_value:
			option_button.select(i)
			return
			
func force_push_current_to_memory(region_code):
	emit_signal("save_region_requested", _collect_current_data())
	
func _collect_current_data() -> Dictionary:
	var updated_data = {
		"culture": culture_edit.text,
		"faith": faith_edit.text,
		"max_infrastrucure": str(max_infra.value),
		"coastal": "T" if coastal_check.button_pressed else "F",
		"river": "T" if river_check.button_pressed else "F",
		"county_names": {
			"Germanic": germanic_edit.text,
			"Roman": roman_edit.text,
			"gaelic": gaelic_edit.text,
			"brithonic": brithonic_edit.text,
			"gothic": gothic_edit.text,
			"basque": basque_edit.text,
			"hispanic": hispanic_edit.text
		}
	}

	return updated_data
