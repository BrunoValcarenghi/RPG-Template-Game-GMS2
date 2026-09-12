if ativo and global.transition_room = -1 and image_alpha = 1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
	
		global.char_selected = noone
		
		instance_destroy()
		obj_pause.draw_stats = noone
		obj_button_keyboard.load_buttons()
	
	}

}