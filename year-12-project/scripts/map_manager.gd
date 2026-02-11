extends Node2D

@onready var map_texture = preload("res://maps/province_map.png")
var image : Image

signal region_selected(hex_code)

func _ready():
	image = map_texture.get_image()
	image.lock()

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var pos = to_local(event.position)
		if pos.x >= 0 and pos.y >= 0 and pos.x < image.get_width() and pos.y < image.get_height():
			var color = image.get_pixelv(pos)
			var hex = color_to_hex(color)
			emit_signal("region_selected", hex)

func color_to_hex(color: Color) -> String:
	return "#%02X%02X%02X" % [
		int(color.r * 255),
		int(color.g * 255),
		int(color.b * 255)
	]
