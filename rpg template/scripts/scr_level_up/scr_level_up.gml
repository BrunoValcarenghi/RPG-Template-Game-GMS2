function level_up(){
	
	var _t = 3
	if array_length(global.team) < 3 _t = array_length(global.team)
	for(var i = 0; i < _t; i++){
		
		global.team[i].xp += xp
		//show_message(global.team[i].xp)
		
	}
	
	var _txt = ""
	
	for(var i = 0; i < _t; i++){
		
		_xp_necessario = 50 * (power(global.team[i].lvl, 2)) + 100 * global.team[i].lvl
		
		while (global.team[i].xp >= _xp_necessario) {
			
			global.team[i].xp -= _xp_necessario
			
			//var mul = (power(1.1, global.team[i].lvl));
			var mul = 1.225
			global.team[i].lvl ++
			//show_message(mul)
			
			global.team[i].hp  = floor(global.team[i].hp *mul)
			global.team[i].atk = floor(global.team[i].atk*mul)
			global.team[i].def = floor(global.team[i].def*mul)
			global.team[i].spd = floor(global.team[i].spd*mul)
			
			_xp_necessario = 50 * (power(global.team[i].lvl, 2)) + 100 * global.team[i].lvl;
			
			_txt = string_concat(_txt, " ", global.team[i].nome, " subiu \npara o nivel ", global.team[i].lvl, "!\n" )
			
		}
	}
	
	return _txt

}