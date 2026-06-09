extends Node

enum MapMode { REALM, CULTURE, FAITH } # I will add Terrain, Goverment, Other

var current_mode: MapMode = MapMode.CULTURE
var overlay_material: ShaderMaterial = null

var _province_codes: Array[String] = []
var _province_count: int = 0

var _province_id_map: ImageTexture = null
var _color_lut: ImageTexture = null
var _border_lut: ImageTexture = null

var _province_map_image: Image = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().process_frame
	_build_province_index()
	# If image arrived before index was ready, bake now
	if _province_map_image != null:
		_bake_id_map()
		rebuild_mode(current_mode)

func register_province_image(img: Image) -> void:
	_province_map_image = img
	# Only bake if index is already built, otherwise _ready() will catch it
	if _province_count > 0:
		_bake_id_map()
		rebuild_mode(current_mode)

func _build_province_index() -> void:
	var color_map: Dictionary = LoadJsonData.color_region_data
	
	for hex in color_map:
		_province_codes.append(color_map[hex])
	_province_count = _province_codes.size()
	
func _bake_id_map() -> void:
	if _province_map_image == null or _province_count == 0:
		push_error("MapModeController: province image or index not ready")
		return
		
	var color_map: Dictionary = LoadJsonData.color_region_data
	var code_to_idx: Dictionary = {}
	for i in _province_count:
		code_to_idx[_province_codes[i]] = i
		
	var hex_to_norm: Dictionary = {}
	for hex in color_map:
		var code: String = color_map[hex]
		if code_to_idx.has(code):
			hex_to_norm[hex] = (float(code_to_idx[code]) + 0.5 ) / float(_province_count)
			
	var w: int = _province_map_image.get_width()
	var h: int = _province_map_image.get_height()
	var id_img := Image.create(w, h, false, Image.FORMAT_RF)

	for y in h:
		for x in w:
			var pix: Color = _province_map_image.get_pixel(x, y)
			if pix.r + pix.g + pix.b < 0.01:  # pure black = border pixel
				id_img.set_pixel(x, y, Color(0.0, 0.0, 0.0, 0.0))
				continue
			var hex: String = "#%s" % pix.to_html(false).left(6).to_upper()
			if hex_to_norm.has(hex):
				id_img.set_pixel(x, y, Color(hex_to_norm[hex], 0.0, 0.0, 1.0))
			else:
				id_img.set_pixel(x, y, Color(0.0, 0.0, 0.0, 0.0))

	_province_id_map = ImageTexture.create_from_image(id_img)

	if overlay_material:
		overlay_material.set_shader_parameter("province_id_map",  _province_id_map)
		overlay_material.set_shader_parameter("province_count",   float(_province_count))
	
	var found_count := 0
	var miss_count := 0
	for y in min(h, 10):
		for x in min(w, 100):
			var pix: Color = _province_map_image.get_pixel(x, y)
			if pix.a < 0.5:
				continue
			var hex: String = "#%s" % pix.to_html(false).left(6).to_upper()
			if hex_to_norm.has(hex):
				found_count += 1
			else:
				miss_count += 1
				if miss_count < 5:
					print("MISS - pixel hex: '", hex, "'")

	# Also print a sample from color_region_data
	var sample_key = LoadJsonData.color_region_data.keys()[0]
	print("Sample color_region key: '", sample_key, "'")
	print("Found: ", found_count, " Miss: ", miss_count)
	
	var misses := {}
	for y in h:
		for x in w:
			var pix: Color = _province_map_image.get_pixel(x, y)
			if pix.a < 0.5:
				continue
			var hex: String = "#%s" % pix.to_html(false).left(6).to_upper()
			if not hex_to_norm.has(hex) and hex != "#000000":
				misses[hex] = true

	print("Unmatched province colours: ", misses.keys())
		
func set_mode(mode: MapMode) -> void:
	current_mode = mode
	rebuild_mode(mode)

func rebuild_mode(mode: MapMode) -> void:
	if overlay_material == null or _province_count == 0:
		return
	match mode:
		MapMode.REALM:   _build_realm_luts()
		MapMode.CULTURE: _build_culture_luts()
		MapMode.FAITH:   _build_faith_luts()

	overlay_material.set_shader_parameter("province_color_lut",  _color_lut)
	overlay_material.set_shader_parameter("province_border_lut", _border_lut)
	overlay_material.set_shader_parameter("province_count",      float(_province_count))
	if _province_id_map:
		overlay_material.set_shader_parameter("province_id_map", _province_id_map)
		
	print("Shader params set - count: ", _province_count, " lut: ", _color_lut, " id_map: ", _province_id_map)
		
func _build_realm_luts() -> void:
	var realm_data: Dictionary = LoadJsonData.realm_data
	var fill_map:   Dictionary = {}
	var border_map: Dictionary = {}

	for realm_code in realm_data:
		var realm: Dictionary = realm_data[realm_code]
		# realm_data stores hex WITHOUT leading "#"
		var fill: Color   = Color("#" + realm.get("color", "888888"))
		var bord: Color   = fill.darkened(0.4)
		for prov in realm.get("realm", []):
			fill_map[prov]   = fill
			border_map[prov] = bord

	_write_luts(fill_map, border_map)

func _build_culture_luts() -> void:
	var country_data:  Dictionary = LoadJsonData.region_data
	var cultures_data: Dictionary = LoadJsonData.load_json_files("res://data/cultures.json")
	var fill_map:   Dictionary = {}
	var border_map: Dictionary = {}

	for code in _province_codes:
		var prov: Dictionary = country_data.get(code, {})
		var culture: String  = prov.get("culture", "")
		var fill := Color(0.4, 0.4, 0.4, 1.0)
		if cultures_data and cultures_data.has(culture):
			fill = Color(cultures_data[culture].get("cultural_color", "#666666"))
		fill_map[code]   = fill
		border_map[code] = fill.darkened(0.4)

	_write_luts(fill_map, border_map)
	
func _build_faith_luts() -> void:
	
	var country_data: Dictionary = LoadJsonData.region_data
	var faiths_data:  Dictionary = LoadJsonData.load_json_files("res://data/faiths.json")
	var fill_map:   Dictionary = {}
	var border_map: Dictionary = {}

	for code in _province_codes:
		var prov: Dictionary = country_data.get(code, {})
		var faith: String    = prov.get("faith", "")
		var fill := Color(0.4, 0.4, 0.4, 1.0)
		if faiths_data and faiths_data.has(faith):
			var fd: Dictionary = faiths_data[faith]
			# faiths.json has inconsistent key casing ("color" vs "Color")
			var hex: String = fd.get("color", fd.get("Color", "666666"))
			fill = Color("#" + hex)
		fill_map[code]   = fill
		border_map[code] = fill.darkened(0.4)

	_write_luts(fill_map, border_map)
	
	var filled := 0
	for code in _province_codes:
		var prov: Dictionary = country_data.get(code, {})
		if prov.get("faith", "") != "":
			filled += 1
	print("Provinces with faith set: ", filled, " / ", _province_count)
	
	'''var fill_map:   Dictionary = {}
	var border_map: Dictionary = {}

	for code in _province_codes:
		fill_map[code]   = Color(1.0, 0.0, 0.0, 1.0)  # force red
		border_map[code] = Color(0.5, 0.0, 0.0, 1.0)

	_write_luts(fill_map, border_map)'''
	

func _write_luts(fill_map: Dictionary, border_map: Dictionary) -> void:
	var img_fill   := Image.create(_province_count, 1, false, Image.FORMAT_RGBA8)
	var img_border := Image.create(_province_count, 1, false, Image.FORMAT_RGBA8)
	
	print("LUTs written, province_count: ", _province_count)
	print("Sample province 0: ", _province_codes[0] if _province_count > 0 else "NONE")
	print("Fill map size: ", fill_map.size())

	for i in _province_count:
		var code: String  = _province_codes[i]
		img_fill.set_pixel(i,   0, fill_map.get(code,   Color(0.3, 0.3, 0.3, 1.0)))
		img_border.set_pixel(i, 0, border_map.get(code, Color(0.05, 0.05, 0.05, 1.0)))

	if _color_lut == null:
		_color_lut  = ImageTexture.create_from_image(img_fill)
		_border_lut = ImageTexture.create_from_image(img_border)
	else:
		_color_lut.update(img_fill)
		_border_lut.update(img_border)
		

func refresh() -> void:
	rebuild_mode(current_mode)
	
