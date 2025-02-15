function roomToArea(roomName){
	switch (roomName) {
		case rmStarting: return "Starting Area"; break;
		case rmMarket: return "Market"; break;
		case rmCave: return "Cave"; break;
		case rmSquare: return "Square"; break;
		case rmCats: return "Kingdom of Cats"; break;
		case rmBoss: return "Boss Fight"; break;
		case rmSheriffHouse: return "Sheriff's House"; break;
		default: return "Unknown Area"; break;
	}
}