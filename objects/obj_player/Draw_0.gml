draw_self();

if blinkOn
	image_alpha = 0.2;
else
	image_alpha = 1;
	
if playerHealth > 0
	draw_sprite(spr_health, 0, 3, 0);
if playerHealth > 1
	draw_sprite(spr_health, 0, 16, 0);
if playerHealth > 2
	draw_sprite(spr_health, 0, 29, 0);

	
if timer_blinking > 0 {
	if timer_blink == 0 {
		blinkOn = !blinkOn;
		timer_blink = 10;
	}
	
	timer_blink--;
	if --timer_blinking == 0 {
		blinkOn = false;
		timer_blink = 0;
		image_alpha = 1;
	}
}
	