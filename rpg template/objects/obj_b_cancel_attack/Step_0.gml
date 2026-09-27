if active{

	if (keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)))
	and image_alpha = 1{
		
		global.atk = false
		obj_button_keyboard.load_buttons()
		obj_battle.can_select = false;
		instance_destroy()
	
	}

}
