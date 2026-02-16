extends Control

@onready var label = $Label 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_map_editor_region_code_signal(region_code: Variant) -> void:
	
	#Update Lable
	label.text = "Selected Region code : "
	label.text += region_code
	
	
