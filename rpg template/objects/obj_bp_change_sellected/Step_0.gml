button_hover_selected()

if ativo and global.transition_room = -1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
		if global.char_selected = noone global.char_selected = char_id
		else{
		
			var _temp_char = global.team[char_id]
			global.team[char_id] = global.team[global.char_selected]
			global.team[global.char_selected] = _temp_char
			
			global.char_selected = noone
			
			obj_bp_change.selected = false
			obj_bp_change.desactive()
		
		}
	
	}

}