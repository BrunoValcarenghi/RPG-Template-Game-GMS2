_id_atacar = noone

// lista alvos
var _alvos_validos = [];

for (i = 0; i < array_length(global.battle); i++) {
    if (global.battle[i].bom && global.battle[i].life > 0) {
        array_push(_alvos_validos, i); // Guarda a posição do aliado vivo
    }
}

// alvo random
if (array_length(_alvos_validos) > 0) {
    // Sorteia uma das posições da nossa lista de alvos
    var _indice_sorteado = irandom(array_length(_alvos_validos) - 1);
    _id_atacar = _alvos_validos[_indice_sorteado];
	
    // calculo dano
    var _dano= floor(power(global.battle[global.turn].atk, 2) / (global.battle[global.turn].atk + global.battle[_id_atacar].def));
	perdeu_defesa(_id_atacar)
    if (_dano< 1) _dano= 1;
    shake(3)
	_id_obj_atacar = noone
	with (obj_char) {
	    if (turn == other._id_atacar) {
	        other._id_obj_atacar = id; 
	        break;
	    }
	}
	play_audio_random(sfx_damage)
	_id_obj_atacar.hit = 5
	part_system_position(part_system_create(ef_hit), _id_obj_atacar.x, _id_obj_atacar.y)
	
	instance_create_layer(_id_obj_atacar.x, _id_obj_atacar.y, "Instances", obj_damage_number, {damage: _dano})
	
    global.battle[_id_atacar].life -= _dano;

}

global.turn++
atacou = false