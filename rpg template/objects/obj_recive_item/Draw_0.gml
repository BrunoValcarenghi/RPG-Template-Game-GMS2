draw_self()
	
draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)
draw_set_colour(global.bege)

if image_xscale < 20 draw_set_alpha((image_xscale - 15) /5)
else draw_set_alpha(image_alpha)

draw_text(x, y, string_concat("You recive a ", _item.nome))

draw_set_alpha(1)