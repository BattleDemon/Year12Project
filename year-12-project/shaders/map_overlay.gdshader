shader_type canvas_item;

uniform sampler2D province_id_map;
uniform sampler2D province_map;
uniform sampler2D province_color_lut;
uniform sampler2D province_border_lut;

uniform float province_count = 1.0;
uniform float border_width : hint_range(0.5, 5.0) = 1.5;

uniform vec4 selected_color : source_color = vec4(0.0, 0.0, 0.0, 0.0);
uniform vec4 selected_tint  : source_color = vec4(1.5, 1.5, 0.6, 1.0);
uniform vec4 water_color    : source_color = vec4(0.15, 0.35, 0.60, 1.0);

bool is_different_province(vec2 uv, vec2 offset, float norm_idx, float threshold) {
	vec4 nb = texture(province_id_map, uv + offset);
	return nb.a < 0.5 || abs(nb.r - norm_idx) > threshold;
}

void fragment() {
	vec2 uv    = UV;
	vec2 texel = TEXTURE_PIXEL_SIZE;

	vec4 id_pix = texture(province_id_map, uv);

	if (id_pix.r + id_pix.g + id_pix.b < 0.01) {
	    COLOR = water_color;
	} else {
		float norm_idx  = id_pix.r;
		float threshold = 0.4 / province_count;
		float bw        = border_width;

		vec4 fill_color   = texture(province_color_lut,  vec2(norm_idx, 0.5));
		vec4 border_color = texture(province_border_lut, vec2(norm_idx, 0.5));

		bool on_border =
			is_different_province(uv, vec2( bw,  0.0) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2(-bw,  0.0) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2( 0.0,  bw) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2( 0.0, -bw) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2( bw,   bw) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2(-bw,  -bw) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2( bw,  -bw) * texel, norm_idx, threshold) ||
			is_different_province(uv, vec2(-bw,   bw) * texel, norm_idx, threshold);

		vec4 out_color = on_border ? border_color : fill_color;

		if (selected_color.a > 0.0) {
			vec4 prov_pix = texture(province_map, uv);
			vec3 diff = abs(prov_pix.rgb - selected_color.rgb);
			if (diff.r + diff.g + diff.b < 0.015) {
				out_color = clamp(out_color * selected_tint, 0.0, 1.0);
			}
		}

		out_color.a = 1.0;
		COLOR = out_color;
	}
}
