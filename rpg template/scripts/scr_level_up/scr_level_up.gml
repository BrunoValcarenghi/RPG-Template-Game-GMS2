function level_up(){
	
	var _t = 2
	if array_length(global.team) < 2 _t = array_length(global.team)
	for(var i = 0; i < _t; i++){
		
		global.team[i].xp += xp
		//Disabled debug message for team experience.
		//Mensaje de depuración desactivado para la experiencia del equipo.
		//Mensagem de depuração desativada para a experiência da equipe.
		
	}
	
	var _txt = []
	
	for(var i = 0; i < _t; i++){
		
		_xp_necessario = 50 * (power(global.team[i].lvl, 2)) + 100 * global.team[i].lvl
		
		while (global.team[i].xp >= _xp_necessario) {
			
			global.team[i].xp -= _xp_necessario
			
			//Disabled debug calculation for the experience multiplier.
			//Cálculo de depuración desactivado para el multiplicador de experiencia.
			//Cálculo de depuração desativado para o multiplicador de experiência.
			var mul = 1.225
			global.team[i].lvl ++
			//Disabled debug message for the calculated multiplier.
			//Mensaje de depuración desactivado para el multiplicador calculado.
			//Mensagem de depuração desativada para o multiplicador calculado.
			
			global.team[i].hp  = floor(global.team[i].hp *mul)
			global.team[i].atk = floor(global.team[i].atk*mul)
			global.team[i].def = floor(global.team[i].def*mul)
			global.team[i].spd = floor(global.team[i].spd*mul)
			
			_xp_necessario = 50 * (power(global.team[i].lvl, 2)) + 100 * global.team[i].lvl;
			
			array_push(_txt, string_concat(global.team[i].name, " Level Up!"))
			
		}
	}
	
	return _txt

}
