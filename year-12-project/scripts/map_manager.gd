extends Node2D

signal region_clicked(hex_code)

@export var map_texture: Texture2D

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
