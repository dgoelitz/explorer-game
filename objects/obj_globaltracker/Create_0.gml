global.paused = false;
global.unpausing = false;
timer_unpausing = 0;
scrolling = false;
map_open = false;

map_objects = [obj_mapempty, obj_mapfull, obj_mapcurrent];
	
dungeon0Switches = [false];
// 0 - map
dungeon0Items = [false];
dungeon0Map = [[-1, 0, 0, 0],
			   [0, 0, 0, 0],
			   [-1, 2, 0, 0]];
dungeon0Coords = [[[-16, -8], [-8, -8], [0, -8], [8, -8]],
			      [[-16, -3], [-8, -3], [0, -3], [8, -3]],
			      [[-16, 2],  [-8, 2],  [0, 2],  [8, 2]]];
dungeon0Loc = [2, 1];
			   
room_goto_next();