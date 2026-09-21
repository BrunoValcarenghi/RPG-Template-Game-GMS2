function ataque(){

    if global.atk{

        // procura inimigos vivos
        var _vivos = [];
        with(obj_char){
            if !bom and !morto array_push(_vivos, id);
        }

        // ataque automatico com 1 inimigo
        if array_length(_vivos) == 1{
			obj_button_keyboard.load_buttons()
            _executar_ataque(_vivos[0]);
            exit;
        }

        // senão seleciona alvo
		if (keyboard_check_released(vk_enter)) {
		    pode_selecionar = true;
		}

		var _clicou_mouse = mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_char, true, false);
		var _pressionou_enter = keyboard_check_pressed(vk_enter) and pode_selecionar;

		if (_clicou_mouse or _pressionou_enter) {
    
		    var _id_inimigo = noone;
    
		    if (_clicou_mouse) {
		        _id_inimigo = instance_nearest(mouse_x, mouse_y, obj_char);
		    } 
		    else if (_pressionou_enter) {
		        if (instance_exists(obj_button_keyboard)) {
		            var _cursor = obj_button_keyboard.cursor;
		            var _array = obj_button_keyboard.button_array;
            
		            if (_cursor >= 0 and _cursor < array_length(_array)) {
		                _id_inimigo = _array[_cursor];
		            }
		        }
		    }
    
		    if (instance_exists(_id_inimigo) and !_id_inimigo.bom) {
		        _executar_ataque(_id_inimigo);   
		        obj_button_keyboard.load_buttons();
        
		        pode_selecionar = false; 
		    }
		}
		
    }
}

function _executar_ataque(_id_inimigo){
	
	with obj_char{
		if global.turn = turn and !atacou{
				
				sprite_attack()
				image_index = 3
		
		}
	}
	
    shake(4);
    _id_inimigo.hit = 10;

    if global.battle[_id_inimigo.turn].life > 0{
        var _dano = floor(power(global.battle[global.turn].atk, 2) / (global.battle[global.turn].atk + global.battle[_id_inimigo.turn].def));
        if _dano < 1 _dano = 1;
		instance_create_layer(_id_inimigo.x, _id_inimigo.y, "Instances", obj_damage_number, {damage: _dano})
        global.battle[_id_inimigo.turn].life -= _dano;
        if global.battle[_id_inimigo.turn].life > 0{
            play_audio_random(sfx_damage);
            part_system_position(part_system_create(ef_hit), _id_inimigo.x, _id_inimigo.y);
        }
        else{
            play_audio_random(sfx_death);
            part_system_position(part_system_create(ef_death), _id_inimigo.x, _id_inimigo.y);
        }
    }
    else{
        play_audio_random(sfx_damage);
    }

    global.atk = false;
    global.turn++;
}