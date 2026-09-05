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
	var _txt_hp = string_concat("HP:", c.life, "/", c.hp)
	draw_text(62, i*42+50, _txt_hp)
	
	var _txt_xp = string_concat("LVL: ", c.lvl)
	draw_text(62, i*42+60, _txt_xp)
	
}

if array_length(global.team) > 2{

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

#region //stats

	if draw_stats != noone{
		
		var c = global.team[draw_stats]
		
		draw_set_halign(1)
		draw_set_valign(1)
		draw_set_font(f_nicopaint)
		draw_set_colour(global.red_l)
		draw_text(224, 32, "Stats")
		
		var _frame = (current_time / 1000) * sprite_get_speed(c.spr.icon);
		draw_sprite(c.spr.icon, _frame, 168, 44)
		
		draw_set_halign(0)
		draw_set_valign(0)
		draw_set_font(f_nicopups)

		draw_text(208, 40, c.name)
		var _txt_hp = string_concat("HP: ", c.life, "/", c.hp)
		draw_text(208, 50, _txt_hp)
		
		var _p = clamp(c.life / max(c.hp, 1), 0, 1);
		
		draw_set_colour(global.green_d)
		draw_sprite_ext(spr_slot_1, 0, 245, 74, 5, 1, 0, c_white, 1)
		draw_rectangle(208, 69, 208 + 73 * _p, 69 + 9, 0);
		
		draw_set_colour(global.red_l)
		
		draw_text(152, 85, string_concat("LVL: ", c.lvl))
		
		var _xp_to_up = 50 * (power(c.lvl, 2)) + 100 * c.lvl
		var _txt_xp = string_concat("EXP: ", c.xp, "/", _xp_to_up)
		draw_text(152, 95, _txt_xp)
		
		draw_text(152, 105, string_concat("ATK: ", c.atk))
		draw_text(152, 115, string_concat("DEF: ", c.def))
		draw_text(152, 125, string_concat("SPD: ", c.spd))
		
	}
	
#endregion