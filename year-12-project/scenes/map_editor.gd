extends Node2D

signal region_code_signal(region_code)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_map_texture_selected_color_hex(hex_color: Variant) -> void:
	print("selected color =",hex_color)
	if hex_color == "000000":
		return
		
	var new_hex = "#%s" % hex_color.to_upper()
	
	if LoadJsonData.color_region_data.has(new_hex):
		var region_code = LoadJsonData.color_region_data[new_hex]
		region_code_signal.emit(region_code)
		print(region_code)
	else:
		print("Error: Key does not exist")
		
	
	
