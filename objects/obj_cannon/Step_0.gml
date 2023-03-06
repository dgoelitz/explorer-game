if !global.paused
	if ++timer > 60
	{
		timer = 0;
		instance_create_layer(x + (facing_x * 10), y + (facing_y * 10), "Instances", obj_fire, {
			hspeed: facing_x,
			vspeed: facing_y
		});
	}