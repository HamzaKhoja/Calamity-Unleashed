// Layer Management

layer_set_visible("Collision", false);

switch (room) {
	case rmTitle: {
		audio_play_sound(TitleMusic, 1, 0);
		audio_sound_gain(TitleMusic, 0.1, 0);
		audio_sound_gain(TitleMusic, 1, 2000);
	} break;
	
	case rmCats: {
		audio_play_sound(CatsMusic, 1, 0);
		audio_sound_gain(CatsMusic, 0.1, 0);
		audio_sound_gain(CatsMusic, 1, 2000);
	} break;
	
	case rmCave: {
		audio_play_sound(CaveMusic, 1, 0);
		audio_sound_gain(CaveMusic, 0.1, 0);
		audio_sound_gain(CaveMusic, 1, 2000);
	} break;
	
	case rmTavern: {
		audio_play_sound(TavernMusic, 1, 0);
		audio_sound_gain(TavernMusic, 0.1, 0);
		audio_sound_gain(TavernMusic, 1, 2000);
	} break;
	
	case rmMarket: {
		audio_play_sound(MarketMusic, 1, 0);
		audio_sound_gain(MarketMusic, 0.1, 0);
		audio_sound_gain(MarketMusic, 1, 2000);
	} break;
	
	case rmSheriffHouse: {
		audio_play_sound(HouseMusic, 1, 0);
		audio_sound_gain(HouseMusic, 0.1, 0);
		audio_sound_gain(HouseMusic, 1, 2000);
	} break;
	
	case rmStarting: {
		audio_play_sound(StartingMusic, 1, 0);
		audio_sound_gain(StartingMusic, 0.1, 0);
		audio_sound_gain(StartingMusic, 1, 2000);
	} break;
	
	//case rmSquare: {
	//	audio_play_sound(SquareMusic, 1, 0);
	//	audio_sound_gain(SquareMusic, 0, 0);
	//	audio_sound_gain(SquareMusic, 1, 2000);
	//} break;
	
	
}