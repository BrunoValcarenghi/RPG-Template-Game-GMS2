draw_self()
	
draw_set_halign(0)
draw_set_valign(0)

//avatar
draw_set_font(f_nicopaint)
var _frame = (current_time / 1000) * sprite_get_speed(text[i].avatar);
draw_sprite(text[i].avatar, _frame, x - 200, y-12)

//who
draw_sprite_stretched(spr_slot_3, 0, x-205, y - 35, string_length(text[i].who)*10 + 5, 20)
draw_set_colour(global.red_l)
draw_text(x-200, y-32, text[i].who)

//text
draw_set_font(f_nicoclean)
draw_set_colour(global.bege)

draw_text(x-150, y-10, text[i].text)

//button interactive
draw_interaction_button(x+200, y+19)

if text[i].options != noone and !instance_exists(obj_b_options){

	for(ii = 0; ii < array_length(text[i].options ); ii++){
		
		var _xx = 180
		var _yy = -30 + 26*ii
		instance_create_layer(x + _xx, y + _yy, "buttons", obj_b_options, {_x: _xx, _y: _yy, event: options[ii], text: text[i].options[ii]})
		obj_button_keyboard.load_buttons()
		obj_button_keyboard.cursor=1
		
	}
	
}