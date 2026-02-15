extends TextureRect

@onready var image: Image = texture.get_image()

func _input(event):
	if event is InputEventMouseMotion or event is InputEventMouseButton:
		var local_mouse_pos = get_local_mouse_position()
		
		if Rect2(Vector2.ZERO, size).has_point(local_mouse_pos):
			var color = image.get_pixel(int(local_mouse_pos.x), int(local_mouse_pos.y))
			var hex_color = color.to_html()
			print(hex_color)
