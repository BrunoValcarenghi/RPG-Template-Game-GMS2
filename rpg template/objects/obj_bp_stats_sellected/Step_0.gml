button_hover_selected()

if ativo and global.transition_room = -1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
		
		global.char_selected = char_id
		obj_pause.view_stats()
			
		obj_bp_stats.selected = false
		obj_bp_stats.desactive()
		
		global.char_selected = noone
		
		if instance_exists(obj_bp_back_stats) instance_destroy(obj_bp_back_stats)
		instance_create_layer(224, 192, "buttons", obj_bp_back_stats)
		obj_button_keyboard.load_buttons()
		
	}

}