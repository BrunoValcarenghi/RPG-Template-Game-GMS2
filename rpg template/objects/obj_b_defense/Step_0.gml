//Inherit the parent event.
//Hereda el evento del objeto pai.
//Herda o evento do objeto pai.
event_inherited();

if active{

	if (keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)))
	and image_alpha = 1{
		
		play_audio_random(sfx_button, .5)
		global.def = true
	
	}

}
