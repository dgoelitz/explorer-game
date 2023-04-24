if !global.paused
{
	if (keyboard_check(ord("A")) || keyboard_check(vk_left)) && place_empty(x-1, y, obj_wall)
		x -= 1;
	if (keyboard_check(ord("W")) || keyboard_check(vk_up)) && place_empty(x, y-1, obj_wall)
		y -= 1;
	if (keyboard_check(ord("D")) || keyboard_check(vk_right)) && place_empty(x+1, y, obj_wall)
		x += 1;
	if (keyboard_check(ord("S")) || keyboard_check(vk_down)) && place_empty(x, y+1, obj_wall)
		y += 1;
}

if !scrolling
{
	if x >= 160 
	{
		scrolling = true;
		inst_globaltracker.scrollRight();
	}
	
	if x <= -10
	{
		scrolling = true;
		inst_globaltracker.scrollLeft();
	}
	
	if y >= 90 
	{
		scrolling = true;
		inst_globaltracker.scrollDown();
	}
	
	if y <= -10
	{
		scrolling = true;
		inst_globaltracker.scrollUp();
	}
}