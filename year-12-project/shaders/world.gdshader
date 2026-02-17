shader_type canvas_item;

uniform vec4 selected_color;      // color to highlight
uniform float highlight_strength = 0.7; // how strong highlight is
uniform float tolerance = 0;   // color difference tolerance

void fragment() {
    vec4 tex = texture(TEXTURE, UV);

    // calculate distance in RGB space
    float match_r = step(abs(tex.r - selected_color.r), 0.001);
	float match_g = step(abs(tex.g - selected_color.g), 0.001);
	float match_b = step(abs(tex.b - selected_color.b), 0.001);

    // smooth step for gentle blending
    float is_selected = match_r * match_g * match_b;

    // highlight color (yellow)
    vec3 highlight_color = vec3(1.0, 1.0, 0.0);

    // if alpha is near zero, skip highlight; else blend
    float alpha_mask = step(0.01, tex.a); // 1 if visible, 0 if transparent
    vec3 final_rgb = is_selected > 0.0 ? highlight_color : tex.rgb;


    COLOR = vec4(final_rgb, tex.a);
}
