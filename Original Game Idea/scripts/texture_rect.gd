extends TextureRect

@onready var image: Image = texture.get_image()

signal selected_region_code(region_code: String)

func _input(event: InputEvent) -> void:
	if not event is InputEventMouseButton:
		return
	if not (event as InputEventMouseButton).pressed:
		return

	var local_pos := get_local_mouse_position()
	if not Rect2(Vector2.ZERO, size).has_point(local_pos):
		return

	var pix: Color = image.get_pixelv(local_pos.floor())

	# Transparent or black → water / border pixel, ignore
	if pix.a < 0.5 or (pix.r + pix.g + pix.b) < 0.01:
		return

	var hex: String = "#%s" % pix.to_html(false).left(6).to_upper()

	if not LoadJsonData.color_region_data.has(hex):
		print("MapClick: unknown color ", hex)
		return

	var region_code: String = LoadJsonData.color_region_data[hex]
	selected_region_code.emit(region_code)
	print("Selected: ", region_code)

	# Tell the overlay shader which province is selected (for highlight)
	var shader_color := Color(pix.r, pix.g, pix.b, 1.0)
	if MapModeController.overlay_material:
		MapModeController.overlay_material.set_shader_parameter("selected_color", shader_color)
