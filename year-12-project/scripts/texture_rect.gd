extends TextureRect

@onready var image: Image = texture.get_image()

signal selected_color_hex(hex_color)

func _input(event):
	if event is InputEventMouseButton:
		var local_mouse_pos = get_local_mouse_position()
		
		if Rect2(Vector2.ZERO, size).has_point(local_mouse_pos):
			var color = image.get_pixel(int(local_mouse_pos.x), int(local_mouse_pos.y))
			var hex_color = color.to_html()
			hex_color = hex_color.left(6)
			print(hex_color)
			
			selected_color_hex.emit(hex_color)
