if (entityShadow) draw_sprite(playerShadow, 0, x, y);

if (flash != 0){
	shader_set(flashShader);
	uFlash = shader_get_uniform(flashShader, "flash");
	shader_set_uniform_f(uFlash, flash);	
}

if (distance_to_object(oPlayer) < 10) && object_is_ancestor(object_index, oParentNPC){
	shader_set(shOutline);
	shader_set_uniform_f(uPixelW, texelW);
	shader_set_uniform_f(uPixelH, texelH);
}

draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y-z,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);



if (shader_current() != -1) shader_reset();


// draw_self();
