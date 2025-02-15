// Shadow
draw_sprite(playerShadow, 0, x, y);

// Draw Hook Before Player
if (state == playerStateHook) && (image_index != 3) drawHookChain();


if (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0) && (flash == 0)
{
	//Skip Draw	
}

else {
	
	if (flash != 0) {
		
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader, "flash");
		shader_set_uniform_f( uFlash, flash);
		
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
}

// Draw Hook After Player
if (state == playerStateHook) && (image_index == 3) drawHookChain();

function drawHookChain()
{
	if (!audio_is_playing(seChain)) audio_play_sound(seChain, 1, 0);
	var originX = floor(x);
	var originY = floor(y) - 10;
	var chains = hook div hookSize;
	var hookDirX = sign(hookX);
	var hookDirY = sign(hookY);
	for (var i = 0; i < chains; i++){
		draw_sprite(
			HookRope,
			0,
			originX + hookX - (i*hookSize*hookDirX),
			originY + hookY - (i*hookSize*hookDirY)
			
		);	
	}
	draw_sprite(Hook, image_index, originX + hookX, originY + hookY);
}