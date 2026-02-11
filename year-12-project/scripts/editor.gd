extends Control

@onready var map_manager = $HSplitContainer/map_panel/SubViewportContainer/SubViewport/map_root
@onready var editor_stack = $HSplitContainer/right_panel/editor_stack
@onready var region_editor = $HSplitContainer/right_panel/editor_stack/region_editor
@onready var realm_editor = $HSplitContainer/right_panel/editor_stack/realm_editor
@onready var debug_label = $HSplitContainer/right_panel/bottom_bar/debug_label

var current_mode := "region"

func _ready():
	map_manager.region_clicked.connect(_on_region_clicked)
	$HSplitContainer/right_panel/mode_bar/region_mode_button.pressed.connect(_on_region_mode)
	$HSplitContainer/right_panel/mode_bar/realm_mode_button.pressed.connect(_on_realm_mode)

	_on_region_mode()

func _on_region_mode():
	current_mode = "region"
	editor_stack.current = 0

func _on_realm_mode():
	current_mode = "realm"
	editor_stack.current = 1

func _on_region_clicked(hex: String):
	debug_label.text = "Selected: " + hex

	if not DataManager.regions.has(hex):
		return

	var region_data = DataManager.regions[hex]

	if current_mode == "region":
		region_editor.load_region(hex, region_data)
	else:
		realm_editor.handle_map_click(hex)
