extends Control

@onready var map_manager = $HSplitContainer/map_panel/SubViewportContainer/SubViewport/map_root
@onready var editor_stack = $HSplitContainer/right_panel/editor_stack
@onready var region_editor = $HSplitContainer/right_panel/editor_stack/region_editor
@onready var realm_editor = $HSplitContainer/right_panel/editor_stack/realm_editor
@onready var debug_label = $HSplitContainer/right_panel/bottom_bar/debug_label

var current_mode := "region"

func _ready():
	print("editor ready")
	
	map_manager.region_clicked.connect(_on_region_clicked)
	$HSplitContainer/right_panel/mode_bar/region_mode_button.pressed.connect(_on_region_mode)
	$HSplitContainer/right_panel/mode_bar/realm_mode_button.pressed.connect(_on_realm_mode)

	_on_region_mode()

func _on_region_mode():
	current_mode = "region"
	editor_stack.current_tab = 0

func _on_realm_mode():
	current_mode = "realm"
	editor_stack.current_tab = 1
	map_manager.draw_realm_overlay()

func _on_region_clicked(hex: String):
	debug_label.text = "Selected: " + hex

	if not DataManager.regions.has(hex):
		return

	var region_data = DataManager.regions[hex]

	map_manager.highlight_region(hex)

	if current_mode == "region":
		region_editor.load_region(hex, DataManager.regions[hex])
	else:
		realm_editor.handle_map_click(hex)

func search_province_by_code(code: String):
	for hex in DataManager.regions.keys():
		if DataManager.regions[hex]["county_code"] == code:
			map_manager.highlight_region(hex)
			region_editor.load_region(hex, DataManager.regions[hex])
			break
