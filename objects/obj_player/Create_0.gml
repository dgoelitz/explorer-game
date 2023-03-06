global.paused = false;
global.unpausing = false;
timer_unpausing = 0;
scrolling = false;

instance_deactivate_object(obj_enemy);
instance_deactivate_object(obj_enemysolid);
instance_activate_region(0, 0, 160, 90, true);