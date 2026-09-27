_id_atacar = noone

//List valid targets.
//Lista los objetivos válidos.
//Lista os alvos válidos.
var _valid_targets = [];

for (i = 0; i < array_length(global.battle); i++) {
    if (global.battle[i].is_ally && global.battle[i].life > 0) {
        array_push(_valid_targets, i);
        //Store the position of the living ally.
        //Guarda la posición del aliado vivo.
        //Guarda a posição do aliado vivo.
    }
}

//Choose a random target.
//Elige un objetivo aleatorio.
//Escolhe um alvo aleatório.
if (array_length(_valid_targets) > 0) {
    //Randomly choose one position from the target list.
    //Elige aleatoriamente una posición de la lista de objetivos.
    //Sorteia uma posição da lista de alvos.
    var _random_index = irandom(array_length(_valid_targets) - 1);
    _id_atacar = _valid_targets[_random_index];
	
    //Calculate damage.
    //Calcula el daño.
    //Calcula o dano.
    var _damage= floor(power(global.battle[global.turn].atk, 2) / (global.battle[global.turn].atk + global.battle[_id_atacar].def));
	perdeu_defesa(_id_atacar)
    if (_damage< 1) _damage= 1;
    shake(3)
	_target_object_id = noone
	with (obj_char) {
	    if (turn == other._id_atacar) {
	        other._target_object_id = id; 
	        break;
	    }
	}
	play_audio_random(sfx_damage)
	_target_object_id.hit = 5
	part_system_position(part_system_create(ef_hit), _target_object_id.x, _target_object_id.y)
	
	instance_create_layer(_target_object_id.x, _target_object_id.y, "Instances", obj_damage_number, {damage: _damage})
	
    global.battle[_id_atacar].life -= _damage;

}

global.turn++
has_attacked = false
