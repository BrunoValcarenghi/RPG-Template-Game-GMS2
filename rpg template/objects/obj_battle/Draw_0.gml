draw_self()
draw_set_colour(global.black)
draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)

if global.seu_turno {txt = "Your Turn"}
else {txt = "Enemy Turn"}
if !win text_border(room_width/2, 34, txt, global.bege, global.red_l, 1)

draw_set_font(f_nicopups)

draw_set_halign(0)
var _t = 2
if array_length(global.team) < 2 _t = array_length(global.team)
for(var i = 0; i < _t; i++){

	draw_sprite_ext(spr_slot_1, 0, 84, i*50+25, 9.5, 2.5, 0, c_white, 1)
	draw_sprite_ext(spr_slot_3, 0, 84, i*50+30, 8, 1, 0, c_white, 1)
	draw_set_colour(global.bege)
	draw_text(
		20, 
		i*50+15, 
		string_concat(global.team[i].name, ": HP ", global.team[i].life, "/", global.team[i].hp)
	)
	life_bar(23, i*50 + 25, 121, 9, global.team[i].life, global.team[i].hp)
	
}

draw_set_halign(2)
for(var i = 0; i < array_length(global.enemys); i++){
	
	
	draw_sprite_ext(spr_slot_1, 0, 342, i*50+25, 9.5, 2.5, 0, c_white, 1)
	draw_sprite_ext(spr_slot_3, 0, 342, i*50+30, 8, 1, 0, c_white, 1)
	draw_set_colour(global.bege)
	draw_text(	
		406, 
		i*50+15, 
		string_concat(global.enemys[i].name, ": HP ", global.enemys[i].life, "/", global.enemys[i].hp)
	)
	
	life_bar(403, i*50 + 25, -123, 9, global.enemys[i].life, global.enemys[i].hp)
	
}