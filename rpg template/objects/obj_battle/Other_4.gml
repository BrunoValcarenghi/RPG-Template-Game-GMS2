global.battle = []
global.battle_obj = []
global.turn = 0
global.atk = false
global.def = false
global.item = false
global.is_player_turn = false
can_select = false

xp = 0
win = false

var _t = 2
if array_length(global.team) < 2 _t = array_length(global.team)

//Create team characters.
//Crea los personajes del equipo.
//Cria os personagens da equipe.
for(var i = 0; i < _t; i++){


	var _char = instance_create_layer(80, i * 20 + 110, "char", obj_char)
	
	_char.sprite_index = global.team[i].spr.idle
	_char.spd_char = global.team[i].spd
	
	array_push(global.battle, global.team[i])
	array_push(global.battle_obj, _char)

}

//Create enemy characters.
//Crea los personajes enemigos.
//Cria os personagens inimigos.
for(var i = array_length(global.enemies) - 1; i >= 0; i--){
	
	
	var _char = instance_create_layer(426 - 80, i * 20 + 110, "char", obj_char)
	
	_char.sprite_index = global.enemies[i].spr.idle
	_char.spd_char = global.enemies[i].spd
	_char.image_xscale = -1
	
	xp += global.enemies[i].xp
	
	array_push(global.battle, global.enemies[i])
	array_push(global.battle_obj, _char)

}

global.turn = 0

//Order by speed.
//Ordenar por velocidad.
//Ordena por velocidade.

var order_spd = function(element1, element2) {
    return element2.spd - element1.spd;
}
var order_spd_obj = function(element1, element2) {
    return element2.spd_char - element1.spd_char;
}

array_sort(global.battle, order_spd);
array_sort(global.battle_obj, order_spd_obj);

//Assign turn order based on speed.
//Define el orden de turnos según la velocidad.
//Define a ordem dos turnos com base na velocidade.
for(var i = 0; i < array_length(global.battle); i++){
	
	global.battle_obj[i].turn = i
	//Disabled debug message for character battle speed.
	//Mensaje de depuración desactivado para la velocidad del personaje en batalla.
	//Mensagem de depuração desativada para a velocidade do personagem na batalha.
	//Disabled debug message for the character turn.
	//Mensaje de depuración desactivado para el turno del personaje.
	//Mensagem de depuração desativada para o turno do personagem.
	
}

//Disabled debug message for the battle data.
//Mensaje de depuración desactivado para los datos de batalla.
//Mensagem de depuração desativada para os dados da batalha.

life_bar = function(_x, _y, _width, _height, _current, _max, _color = global.green_d){

    var _p = clamp(_current / max(_max, 1), 0, 1);

    draw_set_colour(_color);
    draw_rectangle(_x, _y, _x + _width * _p, _y + _height, 0);

}

//Calculate the gold reward.
//Calcula la recompensa de oro.
//Calcula a recompensa em ouro.
gold = irandom_range(floor(xp/6), floor(xp/4))
