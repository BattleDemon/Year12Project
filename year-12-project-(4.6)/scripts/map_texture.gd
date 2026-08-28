extends TextureRect

var image: Image

func _ready():
	if texture:
		image = texture.get_image()

signal selectedRegionCode(region_code)

func _input(event):
	if event is InputEventMouseButton:
		var local_mouse_pos = get_local_mouse_position()
		
		if Rect2(Vector2.ZERO, size).has_point(local_mouse_pos):
			var img_color = image.get_pixelv(local_mouse_pos.floor())
			
			if img_color.a == 0.0:
				return # transparent pixel, ignore
			
			var hex_color = img_color.to_html(false).left(6) # false ignores alpha
			if hex_color == "000000":
				return

			var new_hex = "#%s" % hex_color.to_upper()
			if LoadJsonData.color_region_data.has(new_hex):
				var region_code = LoadJsonData.color_region_data[new_hex]
				selectedRegionCode.emit(region_code)
				
				# Make sure the shader gets RGB only, optionally apply alpha
				var shader_color = Color(img_color.r, img_color.g, img_color.b, 1.0)
				material.set_shader_parameter("selected_color", shader_color)
				print(region_code)
			else:
				print("Error: Key does not exist")
