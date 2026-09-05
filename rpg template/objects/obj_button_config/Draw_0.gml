// Inherit the parent event
event_inherited();

draw_set_halign(1)
draw_set_valign(1)

draw_sprite_ext(spr_slot_3, 0, x + 128, y, 3.5, 2, 0, image_blend, 1)
draw_sprite_ext(spr_slot_3, 0, x + 192, y, 3.5, 2, 0, image_blend, 1)

draw_set_font(f_nicopaint)

if on {
	draw_set_alpha(.3)
	draw_set_colour(global.red_l)
}
else {
	draw_set_alpha(1)
	draw_set_colour(color)
}
draw_text(x+128, y, "No")

if !on {
	draw_set_alpha(.3)
	draw_set_colour(global.red_l)
}
else {
	draw_set_alpha(1)
	draw_set_colour(color)
}
draw_text(x+192, y, "Yes")

draw_set_alpha(1)