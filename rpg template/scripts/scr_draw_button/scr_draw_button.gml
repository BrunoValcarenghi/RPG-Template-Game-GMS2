function draw_interaction_button(_x = x, _y = y-sprite_height-5){
	
	draw_sprite_ext(spr_slot_1, 0, _x, _y, 1.3, 1.3, 0, image_blend, 1)
	draw_set_colour(global.bege)
	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_font(f_nicopaint)
	draw_text(_x, _y+1, chr(global.key_interactive))

}