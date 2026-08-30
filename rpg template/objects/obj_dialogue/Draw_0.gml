draw_self()
	
draw_set_halign(0)
draw_set_valign(0)

draw_set_font(f_nicopaint)
var _frame = (current_time / 1000) * sprite_get_speed(text[i].avatar);
draw_sprite(text[i].avatar, _frame, x - 200, y-12)

draw_sprite_stretched(spr_slot_3, 0, x-205, y - 35, string_length(text[i].who)*10 + 5, 20)

draw_set_colour(global.red_l)
draw_text(x-200, y-32, text[i].who)
