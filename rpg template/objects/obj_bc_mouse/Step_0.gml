if ativo and global.transition_room = -1 and image_alpha = 1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
		
		if instance_exists(obj_cursor) {
			on = false
			instance_destroy(obj_cursor)
		}
		else{
			on = true
			instance_create_layer(mouse_x, mouse_y, "cursor", obj_cursor)
		}
	
	}

}