roomSwitches = [];
roomItems = [];
roomMap = [];
roomLoc = [];

if room == dungeon0 {
	roomSwitches = dungeon0Switches;
	roomItems = dungeon0Items;
	roomMap = dungeon0Map
	roomLoc = dungeon0Loc;
	roomMap[roomLoc[1]][roomLoc[0]] = 1;
	array_copy(dungeon0Loc, 0, dungeon0StartLoc, 0, 2);
	roomMap[roomLoc[1]][roomLoc[0]] = 2;
}

for (i = 0; i < array_length(roomSwitches); i++) {
	if roomSwitches[i] {
		with obj_bars 
			if other.i == barId
				instance_destroy();
			
		with obj_switch
			if other.i == switchId
				sprite_index = spr_switchdown;
	}
}


if roomItems[0]
	map = true;
else
	map = false;

for (i = 0; i < array_length(roomItems); i++) {
	if roomItems[i] {
		with obj_chest
			if other.i == chestId {
				sprite_index = spr_chestopen;
				done = true;
			}
	}
}


instance_deactivate_object(obj_enemy);
instance_deactivate_object(obj_enemysolid);
instance_activate_region(0, 0, 160, 90, true);