function defesa(){

	if global.def{

		with (obj_char) {
		    if (turn == global.turn) {
				alarm[1] = 1
		        has_defended = true
		        break;
		    }
		}
	
		//Calculate defense.
		//Calcula la defensa.
		//Calcula a defesa.
		global.battle[global.turn].def *= 5
		
		global.def = false
		global.turn++
	
	}


}
function perdeu_defesa(turn_index){
	
	with (obj_char) {
		if (turn == turn_index and has_defended = true) {
			has_defended = false
			global.battle[turn_index].def /= 5
			break;
		}
	}

}
