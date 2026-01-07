extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Load as texture first
	var tex: Texture2D = load("res://modified_design.png")

	# Get a CPU-readable Image
	var img: Image = tex.get_image()
	img.decompress()  # Make sure it's uncompressed
	img.convert(Image.FORMAT_RGBA8)  # Ensure it has alpha

	var data = get_pixel_color_dict(img)
	save_pixel_data_to_json(data, "res://pixel_data.json")

func get_pixel_color_dict(image):
	var pixel_color_dict = {}
	var width = image.get_width()
	var height = image.get_height()

	for y in range(height):
		for x in range(width):
			var currentPixel = image.get_pixel(x, y)
			if currentPixel.a == 1:
				var same_color_neighbors = 0

				var neighbors = [
					Vector2(1, 0),
					Vector2(-1, 0),
					Vector2(0, 1),
					Vector2(0, -1),
					Vector2(1, 1),
					Vector2(-1, 1),
					Vector2(1, -1),
					Vector2(-1, -1)
				]

				for offset in neighbors:
					var nx = x + offset.x
					var ny = y + offset.y
					if nx >= 0 and nx < width and ny >= 0 and ny < height:
						var neighborPixel = image.get_pixel(nx, ny)
						if neighborPixel == currentPixel:
							same_color_neighbors += 1

				if same_color_neighbors >= 4:
					var pixel_color = "#" + currentPixel.to_html(false).to_upper()
					if pixel_color not in pixel_color_dict:
						pixel_color_dict[pixel_color] = []
					pixel_color_dict[pixel_color].append(Vector2(x, y))
	print("Pixel color dict made ")
	return pixel_color_dict

func pixel_dict_to_json_safe(pixel_color_dict):
	var json_dict = {}

	for color in pixel_color_dict:
		json_dict[color] = []
		for pos in pixel_color_dict[color]:
			json_dict[color].append([pos.x, pos.y])

	return json_dict
	
func save_pixel_data_to_json(pixel_color_dict, path):
	print("Saving Pixel Data to json")
	var json_safe = pixel_dict_to_json_safe(pixel_color_dict)
	var json_string = JSON.stringify(json_safe, "\t")

	var file = FileAccess.open(path, FileAccess.WRITE)
	file.store_string(json_string)
	file.close()
