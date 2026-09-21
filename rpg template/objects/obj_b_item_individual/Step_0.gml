// Inherit the parent event

if ativo{

	if (keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)))
	and image_alpha = 1{
		
		play_audio_random(sfx_button, .5)
		
		global.item_selected = item_id
		
		obj_button_keyboard.load_buttons("char", 1)
		
	}

}