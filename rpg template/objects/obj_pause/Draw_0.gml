draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)
draw_set_colour(global.red_l)
draw_text(360, 32, "Options")

#region // team and reserve

draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)
draw_set_colour(global.red_l)
draw_text(80, 32, "Team")

var _t = 2
if array_length(global.team) < _t _t = array_length(global.team)

for(var i = 0; i < _t; i++){
	
	var c = global.team[i]
	
	draw_sprite_ext(spr_slot_1, 0, 76, i*42+60, 6.5, 2.5, 0, c_white, 1)
	var _frame = (current_time / 1000) * sprite_get_speed(c.spr.icon);
	draw_sprite(c.spr.icon, _frame, 28, i*42+44)
	
	draw_set_halign(0)
	draw_set_valign(0)
	draw_set_font(f_nicopups)
	draw_set_colour(global.bege)

	draw_text(62, i*42+40, c.name)
	var _txt_hp = string_concat("HP=", c.life, "/", c.hp)
	draw_text(62, i*42+50, _txt_hp)
	
	var _xp_to_up = 50 * (power(c.lvl, 2)) + 100 * c.lvl
	
	var _txt_xp = string_concat("LVL: ", c.lvl)
	draw_text(62, i*42+60, _txt_xp)
	
}

if array_length(global.team) >= _t{

	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_font(f_nicopaint)
	draw_set_colour(global.red_l)
	draw_text(80, 132, "Reserve")
	
	for(var i = _t; i < array_length(global.team); i++){
	
		var c = global.team[i]
	
		draw_sprite_ext(spr_slot_1, 0, 76, (i+.5)*42+60, 6.5, 2.5, 0, c_white, 1)
		var _frame = (current_time / 1000) * sprite_get_speed(c.spr.icon);
		draw_sprite(c.spr.icon, _frame, 28, (i+.5)*42+44)
	
		draw_set_halign(0)
		draw_set_valign(0)
		draw_set_font(f_nicopups)
		draw_set_colour(global.bege)

		draw_text(62, (i+.5)*42+40, c.name)
		var _txt_hp = string_concat("HP=", c.life, "/", c.hp)
		draw_text(62, (i+.5)*42+50, _txt_hp)
	
		var _xp_to_up = 50 * (power(c.lvl, 2)) + 100 * c.lvl
	
		var _txt_xp = string_concat("LVL: ", c.lvl)
		draw_text(62, (i+.5)*42+60, _txt_xp)
	
	}

}

#endregion