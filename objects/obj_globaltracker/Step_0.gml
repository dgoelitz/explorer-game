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
	startScrolling();
}
	
function scrollLeft() {
	scrolling_x = 2;
	scrolling_y = 0;
	timer_scrolling = 160;
	startScrolling();
}
	
function scrollDown() {
	scrolling_x = 0;
	scrolling_y = -2;
	timer_scrolling = 90;
	startScrolling();
}
	
function scrollUp() {
	scrolling_x = 0;
	scrolling_y = 2;
	timer_scrolling = 90;
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

if keyboard_check_pressed(ord("M")) && map_open == false && global.paused == false {
	global.paused = true;
	map_open = true;
	
	for (let i = 0; i < array_length(dungeon0Map); i++ {
		for (let j = 0; j < array_length(dungeon0Map)[i]; j++ {
			
		}
	}
}