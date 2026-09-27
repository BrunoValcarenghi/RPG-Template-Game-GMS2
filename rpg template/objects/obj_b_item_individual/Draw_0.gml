if can_draw{
	draw_self()

	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_font(f_nicopups)
	draw_set_colour(global.bege)

	var _item = struct_get(global.items, global.inventory[item_id].item_id);
	draw_sprite(_item.spr, 0, x-8, y)
	draw_text(x+8, y, string_concat(global.inventory[item_id].quantity, "x"))

	draw_set_valign(0)
	draw_set_colour(global.red_l)
	draw_text(x, y+12, _item.name_alt)

	if image_alpha = 1 button_hover_1()

}
