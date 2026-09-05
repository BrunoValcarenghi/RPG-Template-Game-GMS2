if ativo and global.transition_room = -1 and image_alpha = 1{

	if obj_player.key_interactive
	or keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor))
	{
		
		play_audio_random(sfx_button, .5)
		
		obj_dialogue.next()
		
		event()
		
	}

}

x = obj_dialogue.x + _x
y = obj_dialogue.y + _y
