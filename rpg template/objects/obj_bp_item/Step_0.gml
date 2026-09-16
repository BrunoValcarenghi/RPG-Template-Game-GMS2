button_hover_selected_item();

if global.button_selected != noone and global.button_selected != id{ 
	obj_pause.draw_alpha_inventory = 0.5
}
else{
	obj_pause.draw_alpha_inventory = 1
}

if (ativo and global.transition_room == -1) {

    var _clicou_mouse = mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id);
    var _pressionou_enter = keyboard_check_pressed(vk_enter) and (obj_button_keyboard.cursor == inventory_id);

    if ((_clicou_mouse or _pressionou_enter) and obj_pause.draw_alpha_inventory = 1) {
		
        play_audio_random(sfx_button, 0.5);
		
		selected = !selected
		
		global.char_selected = noone
	
		if selected{
			
			global.item_selected = inventory_id
			
			global.button_selected = id
		
			for(var i = array_length(global.team) - 1; i >= 0; i--){
		
				var ii = i
				if i >= 2 ii = i+.5

				_change_sellected = instance_create_layer(26, ii*42+42, "select", obj_bp_item_sellected)
				_change_sellected.char_id = i
				
			}
		
			obj_button_keyboard.load_buttons("select")
		
		}
		else desactive()
		
    }
}