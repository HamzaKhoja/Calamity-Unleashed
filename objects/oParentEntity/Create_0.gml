z = 0;
flash = 0;
flashShader = shWhiteFlash;
uFlash = shader_get_uniform(flashShader, "flash");
lifted = 0;
thrown = false;

entityDropList = -1;
spd = 0;

collisionMap = layer_tilemap_get_id(layer_get_id("Collision"));


uPixelH = shader_get_uniform(shOutline, "pixelH");
uPixelW = shader_get_uniform(shOutline, "pixelW");

if (sprite_index) {
	texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
	texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));
}