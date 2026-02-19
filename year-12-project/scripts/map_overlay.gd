extends TextureRect

func _ready() -> void:
	self_modulate.a = 0.0

	var mat := material as ShaderMaterial
	MapModeController.overlay_material = mat
	mat.set_shader_parameter("province_map", texture)

	# Debug — check what the texture actually is
	print("Texture type: ", texture.get_class())

	var img: Image = null

	
	if texture is CompressedTexture2D:
		img = (texture as CompressedTexture2D).get_image()

	if img:
		img.convert(Image.FORMAT_RGBA8)
		print("Format after convert: ", img.get_format())  # should print 5
		# Sample a non-corner pixel to check
		var test_pix = img.get_pixel(img.get_width() / 2, img.get_height() / 2)
		print("Centre pixel: ", test_pix)
		MapModeController.register_province_image(img)

	print("Image result: ", img)

	if img:
		MapModeController.register_province_image(img)
	else:
		push_error("MapOverlay: failed to load province map image")
