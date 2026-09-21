global.battle = []
global.battle_obj = []
global.turn = 0
global.atk = false
global.def = false
global.item = false
global.seu_turno = false
pode_selecionar = false

xp = 0
win = false

var _t = 2
if array_length(global.team) < 2 _t = array_length(global.team)

//create char team
for(var i = 0; i < _t; i++){


	var _char = instance_create_layer(80, i * 20 + 110, "char", obj_char)
	
	_char.sprite_index = global.team[i].spr.idle
	_char.spd_char = global.team[i].spd
	
	array_push(global.battle, global.team[i])
	array_push(global.battle_obj, _char)

}

//create char enemy
for(var i = array_length(global.enemys) - 1; i >= 0; i--){
	
	
	var _char = instance_create_layer(426 - 80, i * 20 + 110, "char", obj_char)
	
	_char.sprite_index = global.enemys[i].spr.idle
	_char.spd_char = global.enemys[i].spd
	_char.image_xscale = -1
	
	xp += global.enemys[i].xp
	
	array_push(global.battle, global.enemys[i])
	array_push(global.battle_obj, _char)

}

global.turn = 0

//order by spd

var order_spd = function(elemento1, elemento2) {
    return elemento2.spd - elemento1.spd;
}
var order_spd_obj = function(elemento1, elemento2) {
    return elemento2.spd_char - elemento1.spd_char;
}

array_sort(global.battle, order_spd);
array_sort(global.battle_obj, order_spd_obj);

//define turn by spd
for(var i = 0; i < array_length(global.battle); i++){
	
	global.battle_obj[i].turn = i
	//show_message(global.batalha_obj[i].spd_char)
	//show_message(global.batalha_obj[i].vez)
	
}

//show_message(global.batalha)

life_bar = function(_x, _y, _largura, _altura, _atual, _max, _cor = global.green_d){

    var _p = clamp(_atual / max(_max, 1), 0, 1);

    draw_set_colour(_cor);
    draw_rectangle(_x, _y, _x + _largura * _p, _y + _altura, 0);

}