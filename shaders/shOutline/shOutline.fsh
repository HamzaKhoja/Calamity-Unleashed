//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;

void main() {
	vec2 offsetX; offsetX.x = pixelW;
	vec2 offsetY; offsetY.y = pixelH;

	vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	float alpha = texColor.a;
	float original_alpha = alpha;
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);
	
	if (alpha > 1.0) alpha = 1.0; // claim alpha
	if (original_alpha != alpha) {
		gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
	}
	else {
		gl_FragColor = texColor;
	}
	gl_FragColor.a = alpha;
}