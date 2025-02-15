
if (audio_is_playing(BossMusic)) {
	draw_sprite(CalamityHPBarBG, 0, HPBar_x, HPBar_y);
	draw_sprite_stretched(HealthPoint, 0, HPBar_x, HPBar_y-1, (enemyHP/maxHP) * HPBar_width -1, HPBar_height);
	draw_sprite(CalamityHPBarBorder, 0, HPBar_x, HPBar_y);
}