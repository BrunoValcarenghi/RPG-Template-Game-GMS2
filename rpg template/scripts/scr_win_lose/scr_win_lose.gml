function vitoria_derrota(){
	
	//checa vitoria
	var _inimigos_validos = []
	for (var i = 0; i < array_length(global.battle); i++) {
	    if (!global.battle[i].bom && global.battle[i].life > 0) {
	        array_push(_inimigos_validos, i);
	    }
	}
	
	//venceu a battle
	if (array_length(_inimigos_validos) <= 0) and !win{
		win = vitoria()
	}
	
	//checa derrota
	var _alvos_validos = [];

	for (var i = 0; i < array_length(global.battle); i++) {
	    if (global.battle[i].bom && global.battle[i].life > 0) {
	        array_push(_alvos_validos, i);
	    }
	}

	if (array_length(_alvos_validos) <= 0) and global.seu_turno{

		derrota();

	}

}

function vitoria(){
	
	instance_create_layer(x, y, "Instances", obj_win, {_txt_up: level_up()})
	room_goto(rm_win)
	return true;
	
}

function derrota(){
	
	//if !instance_exists(obj_game_over) instance_create_layer(320, 150, "Instances", obj_game_over)
	show_message("perdeu!")
	game_restart()
	
}