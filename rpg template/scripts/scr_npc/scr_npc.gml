function draw_interaction_button(){
	
	draw_sprite_ext(spr_slot_1, 0, x, y-sprite_height-5, 1.3, 1.3, 0, image_blend, 1)
	draw_set_colour(global.bege)
	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_font(f_nicopaint)
	draw_text(x, y-sprite_height-4, chr(global.key_interactive))

}