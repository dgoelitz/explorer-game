if !global.paused
{
	if keyboard_check(ord("A")) && place_empty(x-1, y, obj_wall)
		x -= 1;
	if keyboard_check(ord("W")) && place_empty(x, y-1, obj_wall)
		y -= 1;
	if keyboard_check(ord("D")) && place_empty(x+1, y, obj_wall)
		x += 1;
	if keyboard_check(ord("S")) && place_empty(x, y+1, obj_wall)
		y += 1;
}

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
	
	
if !scrolling
{
	if x >= 160 
	{
		scrolling_x = -2;
		scrolling_y = 0;
		timer_scrolling = 160;
		startScrolling();
	}
	
	if x <= -10
	{
		scrolling_x = 2;
		scrolling_y = 0;
		timer_scrolling = 160;
		startScrolling();
	}
	
	if y >= 90 
	{
		scrolling_x = 0;
		scrolling_y = -2;
		timer_scrolling = 90;
		startScrolling();
	}
	
	if y <= -10
	{
		scrolling_x = 0;
		scrolling_y = 2;
		timer_scrolling = 90;
		startScrolling();
	}
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
		global.paused = false;
		instance_activate_region(0, 0, 160, 90, true);
	}
}