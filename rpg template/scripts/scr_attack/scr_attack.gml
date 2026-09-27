function ataque(){

    if global.atk{

        //Find living enemies.
        //Busca enemigos vivos.
        //Procura inimigos vivos.
        var _living = [];
        with(obj_char){
            if !is_ally and !dead array_push(_living, id);
        }

        //Perform the attack automatically when only one enemy is available.
        //Realiza el ataque automáticamente cuando solo hay un enemigo disponible.
        //Executa o ataque automaticamente quando há apenas um inimigo disponível.
        if array_length(_living) == 1{
			obj_button_keyboard.load_buttons()
            _executar_ataque(_living[0]);
            exit;
        }

        //Otherwise, select a target.
        //De lo contrario, selecciona un objetivo.
        //Caso contrário, seleciona um alvo.
		if (keyboard_check_released(vk_enter)) {
		    can_select = true;
		}

		var _clicou_mouse = mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_char, true, false);
		var _pressionou_enter = keyboard_check_pressed(vk_enter) and can_select;

		if (_clicou_mouse or _pressionou_enter) {
    
		    var _enemy_id = noone;
    
		    if (_clicou_mouse) {
		        _enemy_id = instance_nearest(mouse_x, mouse_y, obj_char);
		    } 
		    else if (_pressionou_enter) {
		        if (instance_exists(obj_button_keyboard)) {
		            var _cursor = obj_button_keyboard.cursor;
		            var _array = obj_button_keyboard.button_array;
            
		            if (_cursor >= 0 and _cursor < array_length(_array)) {
		                _enemy_id = _array[_cursor];
		            }
		        }
		    }
    
		    if (instance_exists(_enemy_id) and _enemy_id.object_index == obj_char and !_enemy_id.is_ally) {
				
				_executar_ataque(_enemy_id);   				
		        
		        obj_button_keyboard.load_buttons();
        
		        can_select = false; 
		    }
		}
		
    }
}

function _executar_ataque(_enemy_id){
	
	if instance_exists(obj_b_cancel_attack) instance_destroy(obj_b_cancel_attack)
	
	with obj_char{
		if global.turn = turn and !has_attacked{
				
				sprite_attack()
				image_index = 3
		
		}
	}
	
    shake(4);
    _enemy_id.hit = 10;

    if global.battle[_enemy_id.turn].life > 0{
        var _damage = floor(power(global.battle[global.turn].atk, 2) / (global.battle[global.turn].atk + global.battle[_enemy_id.turn].def));
        if _damage < 1 _damage = 1;
		instance_create_layer(_enemy_id.x, _enemy_id.y, "Instances", obj_damage_number, {damage: _damage})
        global.battle[_enemy_id.turn].life -= _damage;
        if global.battle[_enemy_id.turn].life > 0{
            play_audio_random(sfx_damage);
            part_system_position(part_system_create(ef_hit), _enemy_id.x, _enemy_id.y);
        }
        else{
            play_audio_random(sfx_death);
            part_system_position(part_system_create(ef_death), _enemy_id.x, _enemy_id.y);
        }
    }
    else{
        play_audio_random(sfx_damage);
    }

    global.atk = false;
    global.turn++;
}
