if done return;
set = inst_globaltracker.dungeon0Switches;
if set[switchId] == false {
	sprite_index = spr_switchdown;
	set[switchId] = true;
	with obj_bars
		if barId == other.switchId
			instance_destroy();
}
done = true;