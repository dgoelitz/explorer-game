if timer_blinking == 0 {
	if playerHealth > 0 {
		playerHealth--;
		timer_blinking = 100;
		timer_blink = 10;
		blinkOn = true;
	}
	else
		room_restart();
}
	