var collision = !place_empty(x+2, y, obj_player) ||
!place_empty(x-2, y, obj_player) ||
!place_empty(x, y+2, obj_player) ||
!place_empty(x, y-2, obj_player);

if collision && keyboard_check_pressed(vk_enter) && !global.paused
{
	global.paused = true;
	instance_create_layer(12, 48, "Instances", obj_textbox, {
		texts: [
		    "I am Sam.\nSam I am.",
		    "That Sam-I-am, that Sam-I-am!\nI do not like that Sam-I-am!",
		    "Do you like green eggs and ham?",
		    "No, I don't like them, Sam-I-am.\nI do not like green eggs and ham.",
		]
	});
}