roomSwitches = [];

if room == dungeon0 {
	roomSwitches = dungeon0Switches;
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