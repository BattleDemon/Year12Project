extends Node2D

signal region_clicked(hex_code)

@export var map_texture: Texture2D

@onready var highlight_sprite = $highlight_overlay

var image: Image

func _ready():
	if map_texture == null:
		push_error("Map texture not assigned.")
		return
	image = map_texture.get_image()
	image.lock()

func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var local_pos = to_local(event.position)

		if local_pos.x < 0 or local_pos.y < 0:
			return
		if local_pos.x >= image.get_width() or local_pos.y >= image.get_height():
			return

		var color = image.get_pixelv(local_pos)
		var hex = color_to_hex(color)
		emit_signal("region_clicked", hex)

func color_to_hex(c: Color) -> String:
	return "#%02X%02X%02X" % [
		int(c.r * 255),
		int(c.g * 255),
		int(c.b * 255)
	]

func highlight_region(hex: String):
	var highlight_image = Image.create(image.get_width(), image.get_height(), false, Image.FORMAT_RGBA8)
	highlight_image.lock()

	var target_color = hex_to_color(hex)

	for x in image.get_width():
		for y in image.get_height():
			var pixel = image.get_pixel(x, y)
			if pixel == target_color:
				highlight_image.set_pixel(x, y, Color(1, 1, 0, 0.6)) # yellow transparent

	highlight_image.unlock()

	var tex = ImageTexture.create_from_image(highlight_image)
	highlight_sprite.texture = tex

func hex_to_color(hex: String) -> Color:
	return Color(hex)

func draw_realm_overlay():
	var overlay_image = Image.create(image.get_width(), image.get_height(), false, Image.FORMAT_RGBA8)
	overlay_image.lock()

	for x in image.get_width():
		for y in image.get_height():
			var pixel = image.get_pixel(x, y)
			var hex = color_to_hex(pixel)

			if DataManager.regions.has(hex):
				var county = DataManager.regions[hex]
				var code = county.get("county_code", "")
				var realm_color = get_realm_color_for_county(code)

				if realm_color != null:
					overlay_image.set_pixel(x, y, realm_color)

	overlay_image.unlock()
	$RealmOverlay.texture = ImageTexture.create_from_image(overlay_image)

func get_realm_color_for_county(county_code: String):
	for realm in DataManager.realms.values():
		if county_code in realm.get("realm", []):
			return Color(realm.get("color", "#FFFFFF"))
	return null
