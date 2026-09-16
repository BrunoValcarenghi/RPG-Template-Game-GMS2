var _x = x 
var _y = y

if (array_length(button_array) > 0 and cursor >= 0) {
	
	if (instance_exists(button_array[cursor])) {
        _x = x - button_array[cursor].sprite_width/2 - 10;
    }
	
	if button_array[cursor].object_index = obj_char _x = x - 16
	
	else if button_array[cursor].object_index = obj_bp_change_sellected
	or button_array[cursor].object_index = obj_bp_stats_sellected 
	or button_array[cursor].object_index = obj_bp_item_sellected {
		_x = x - 8
		_y = y + 16
	}
	
	else if button_array[cursor].object_index = obj_bp_item{

		_x = x - 12
		_y = y + 16
	}
	
   
}
draw_sprite(spr_button_cursor, 0, _x, _y)