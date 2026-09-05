var _x = x 
if (array_length(button_array) > 0 and cursor >= 0) {
    if (instance_exists(button_array[cursor])) {
        _x = x - button_array[cursor].sprite_width/2 - 10;
    }
}
draw_sprite(spr_button_cursor, 0, _x, y)