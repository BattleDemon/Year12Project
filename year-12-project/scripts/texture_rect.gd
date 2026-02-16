extends TextureRect

@onready var image: Image = texture.get_image()

signal selectedRegionCode(region_code)

func _input(event):
	if event is InputEventMouseButton:
		var local_mouse_pos = get_local_mouse_position()
		
		if Rect2(Vector2.ZERO, size).has_point(local_mouse_pos):
			var color = image.get_pixel(int(local_mouse_pos.x), int(local_mouse_pos.y))
			var hex_color = color.to_html()
			hex_color = hex_color.left(6)
			print(hex_color)
			
			if hex_color == "000000":
				return
		
			var new_hex = "#%s" % hex_color.to_upper()
			
			if LoadJsonData.color_region_data.has(new_hex):
				var region_code = LoadJsonData.color_region_data[new_hex]
				selectedRegionCode.emit(region_code)
				print(region_code)
			else:
				print("Error: Key does not exist")
