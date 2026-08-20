if ativo and global.transition_room = -1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
	
		transition(rm_world, sq_fade_out, sq_fade_in)
	
	}

}