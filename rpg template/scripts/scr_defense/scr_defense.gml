function defesa(){

	if global.def{

		with (obj_char) {
		    if (turn == global.turn) {
				alarm[1] = 1
		        defendeu = true
		        break;
		    }
		}
	
		//calculo defesa
		global.battle[global.turn].def *= 5
		
		global.def = false
		global.turn++
	
	}


}
function perdeu_defesa(turno){
	
	with (obj_char) {
		if (turn == turno and defendeu = true) {
			defendeu = false
			global.battle[turno].def /= 5
			break;
		}
	}

}