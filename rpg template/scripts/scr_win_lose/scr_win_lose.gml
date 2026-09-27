function vitoria_derrota(){
	
	//Check for victory.
	//Comprueba la victoria.
	//Verifica a vitória.
	var _valid_enemies = []
	for (var i = 0; i < array_length(global.battle); i++) {
	    if (!global.battle[i].is_ally && global.battle[i].life > 0) {
	        array_push(_valid_enemies, i);
	    }
	}
	
	//The battle was won.
	//La batalla fue ganada.
	//A batalha foi vencida.
	if (array_length(_valid_enemies) <= 0) and !win{
		win = vitoria()
	}
	
	//Check for defeat.
	//Comprueba la derrota.
	//Verifica a derrota.
	var _valid_targets = [];

	for (var i = 0; i < array_length(global.battle); i++) {
	    if (global.battle[i].is_ally && global.battle[i].life > 0) {
	        array_push(_valid_targets, i);
	    }
	}

	if (array_length(_valid_targets) <= 0) and global.is_player_turn{

		derrota();

	}

}

function vitoria(){
	
	var _recive_gold = string_concat("You recive ", gold, "¢")
	global.gold += gold
	instance_create_layer(x, y, "Instances", obj_win, {_txt_up: level_up(), _txt_gold: _recive_gold})
	room_goto(rm_win)
	return true;
	
}

function derrota(){
	
	transition(rm_lose, sq_fade_out, sq_fade_in)
	
}
