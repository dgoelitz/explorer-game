if global.unpausing == true
	if ++timer_unpausing > 5
	{
		global.unpausing = false;
		global.paused = false;
		timer_unpausing = 0;
	}
	
function startScrolling() {
	scrolling = true;
	global.paused = true;
	destroyMap();
	
	instance_activate_object(obj_enemy);
	with (obj_enemy) {
		x += (other.scrolling_x / 2) * other.timer_scrolling;
		y += (other.scrolling_y / 2) * other.timer_scrolling;
		instance_deactivate_object(self);
	}
	
	instance_activate_object(obj_enemysolid);
	with (obj_enemysolid) {
		x += (other.scrolling_x / 2) * other.timer_scrolling;
		y += (other.scrolling_y / 2) * other.timer_scrolling;
		instance_deactivate_object(self);
	}
}
	
	
function scrollRight() {
	scrolling_x = -2;
	scrolling_y = 0;
	timer_scrolling = 160;
	roomMap[roomLoc[1]][roomLoc[0]+1] = 2;
	roomMap[roomLoc[1]][roomLoc[0]] = 1;
	roomLoc[0] += 1;
	startScrolling();
}
	
function scrollLeft() {
	scrolling_x = 2;
	scrolling_y = 0;
	timer_scrolling = 160;
	roomMap[roomLoc[1]][roomLoc[0]-1] = 2;
	roomMap[roomLoc[1]][roomLoc[0]] = 1;
	roomLoc[0] -= 1;
	startScrolling();
}
	
function scrollDown() {
	scrolling_x = 0;
	scrolling_y = -2;
	timer_scrolling = 90;
	roomMap[roomLoc[1]+1][roomLoc[0]] = 2;
	roomMap[roomLoc[1]][roomLoc[0]] = 1;
	roomLoc[1] += 1;
	startScrolling();
}
	
function scrollUp() {
	scrolling_x = 0;
	scrolling_y = 2;
	timer_scrolling = 90;
	roomMap[roomLoc[1]-1][roomLoc[0]] = 2;
	roomMap[roomLoc[1]][roomLoc[0]] = 1;
	roomLoc[1] -= 1;
	startScrolling();
}


if scrolling 
{
	with (all)
	{
		x += other.scrolling_x;
		y += other.scrolling_y;
	}
	
	timer_scrolling -= 2;
	
	if timer_scrolling <= 0
	{
		scrolling = false;
		obj_player.scrolling = false;
		global.paused = false;
		instance_activate_region(0, 0, 160, 90, true);
	}
}

if keyboard_check_pressed(ord("M")) && roomItems[0] && !map_open && !global.paused {
	map_open = true;
	
	roomCoords = [];
	if (room = dungeon0) {
		roomCoords = dungeon0Coords;
	}
	
	for (var i = 0; i < array_length(roomMap); i++) {
		for (var j = 0; j < array_length(roomMap[i]); j++) {
			if roomMap[i][j] >= 0
				instance_create_depth(80 + roomCoords[i][j][0],
									  45 + roomCoords[i][j][1],
									  -2000,
									  map_objects[roomMap[i][j]]);
		}
	}
}

if keyboard_check_released(ord("M")) && map_open {
	map_open = false;
	destroyMap();
}

function destroyMap() {
	for (var i = 0; i < array_length(map_objects); i++)
		instance_destroy(map_objects[i]);
}