if ativo and global.transition_room = -1 and image_alpha = 1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
		
		if window_get_fullscreen(){
			on = 0
		}
		else{
			on = 1
			
		}
		
		ini_open("save.ini")
	
			ini_write_real("config", "fullscreen", on)
	
		ini_close()
		
		window_set_fullscreen(on)
		
	}

}