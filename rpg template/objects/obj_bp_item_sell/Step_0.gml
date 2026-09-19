button_hover_selected_item(true);

if global.button_selected != noone and global.button_selected != id{ 
	obj_shop.draw_alpha = 0.5
}
else{
	obj_shop.draw_alpha = 1
}

if (ativo and global.transition_room == -1) {

    var _clicou_mouse = mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id);
    var _pressionou_enter = keyboard_check_pressed(vk_enter) and (obj_button_keyboard.cursor == sell_id);

    if ((_clicou_mouse or _pressionou_enter) and obj_shop.draw_alpha = 1) {
		
        play_audio_random(sfx_button, 0.5);
		
		selected = !selected
		
		global.char_selected = noone
	
		if selected{
			
			global.item_selected = sell_id
			
			global.button_selected = id
			
			obj_button_keyboard.load_buttons("buy_buttons")
		
		}
		else desactive()
		
    }
}