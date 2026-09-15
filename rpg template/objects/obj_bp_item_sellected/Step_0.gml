button_hover_selected();

if (ativo and global.transition_room == -1) {

    var _clicou_mouse = mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id);
    var _pressionou_enter = keyboard_check_pressed(vk_enter) and (obj_button_keyboard.cursor == char_id);

    if (_clicou_mouse or _pressionou_enter) {
        play_audio_random(sfx_button, 0.5);
        
		obj_bp_item.selected = false
        obj_bp_item.desactive();
		
    }
}