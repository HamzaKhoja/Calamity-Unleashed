// Initialize & Globals
randomize();

global.gameSaveSlot = 0;

global.BoulderDestroyed = false;

global.gamePaused = false;
global.ruinSword = false;
global.textSpeed = 0.75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.iLifted = noone;
global.hasKey1 = false;
global.hasKey2 = false;
global.hasKey3 = false;

global.fullscreen = false;

global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerGreenGems = 0;
global.playerSoulOrbs = 0;

// Items
global.playerHasAnyItems = false;	
global.playerEquipped = ITEM.SWORD;
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT, false);
global.playerAmmo = array_create(ITEM.TYPE_COUNT, -1);
global.playerAmmo[ITEM.BOMB] = 0;
global.playerAmmo[ITEM.BOW1] = 0;
global.playerAmmo[ITEM.BOW2] = 0;
global.playerAmmo[ITEM.DYNAMITE] = 0;

global.playerItemUnlocked[ITEM.SWORD] = true;
global.playerHasAnyItems = true;

// Testing
global.playerItemUnlocked[ITEM.BOMB] = true;
global.playerAmmo[ITEM.BOMB] = 5;

global.playerItemUnlocked[ITEM.BOW1] = true;
global.playerAmmo[ITEM.BOW1] = 15;
global.playerItemUnlocked[ITEM.BOW2] = true;
global.playerAmmo[ITEM.BOW2] = 15;

global.playerItemUnlocked[ITEM.SWORD] = true;
global.playerItemUnlocked[ITEM.HOOKSHOT] = true;

global.playerItemUnlocked[ITEM.DYNAMITE] = true;
global.playerAmmo[ITEM.DYNAMITE] = 5;


global.questStatus = ds_map_create();
global.questStatus[? "CatQuest"] = 0;
global.questStatus[? "JakeQuest"] = 0;
global.questStatus[? "KeyQuest"] = 0;


// NPC Intros
global.ArmorsmithIntro = false;
global.BarmanIntro = false;
global.BubbaIntro = false;
global.ChemistIntro = false;
global.DarkMerchantIntro = false;
global.FarmerIntro = false;
global.FarmerGDIntro = false;
global.GraveDiggerIntro = false;
global.SheriffIntro = false;
global.WeaponsmithIntro = false;
// global.Intro = false;

global.upKey = "W";
global.downKey = "S";
global.leftKey = "A";
global.rightKey = "D";
global.interactKey = "E"
global.useItemKey = "Q";
global.cycleUpKey = "F";
global.cycleDownKey = "C";
global.attackKey = vk_space;


Music = [BossMusic, CatsMusic, CaveMusic, HouseMusic, MarketMusic, StartingMusic, TavernMusic, TitleMusic];




global.iCamera = instance_create_layer(0, 0, layer, oCamera);
global.iUI = instance_create_layer(0, 0, layer, oUI);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);