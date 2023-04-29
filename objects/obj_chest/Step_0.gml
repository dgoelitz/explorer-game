if global.paused || done return;
if place_meeting(x-3,y, obj_player) {
	if keyboard_check_pressed(vk_space) {
		inst_globaltracker.roomItems[chestId] = true;
		sprite_index = spr_chestopen;
		done = true;
		instance_create_layer(12,48, "Instances", obj_textbox, {
			texts: [
				"You have acquired the dungeon map! Aren't you special?",
				"Hold M to view the map."
			]
		});
	}
}