depth = -1000;
global.paused = false;
global.unpausing = false;
timer_unpausing = 0;
scrolling = false;
playerHealth = 3;
timer_blinking = 0;
timer_blink = 0;
blinkOn = false;

instance_deactivate_object(obj_enemy);
instance_deactivate_object(obj_enemysolid);
instance_activate_region(0, 0, 160, 90, true);