if ativo and global.transition_room = -1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
		
		selected = !selected
		
		global.char_selected = noone
		
		if selected{
		
			global.button_selected = id
			
			for(var i = 0; i < array_length(global.team); i++){
			
				var ii = i
				if i >= 2 ii = i+.5
			
				_change_sellected = instance_create_layer(26, ii*42+42, "buttons", obj_bp_change_sellected)
				_change_sellected.char_id = i
			}
			
			obj_button_keyboard.load_buttons()
		
		}
		else desactive()
	
	}

}