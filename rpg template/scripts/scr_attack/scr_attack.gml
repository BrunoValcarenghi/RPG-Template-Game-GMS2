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
        if (mouse_check_button_pressed(mb_left) 
		and collision_point(mouse_x, mouse_y, obj_char, true, false))
		or (place_meeting(x, y, obj_button_keyboard)
		and keyboard_check_pressed(vk_enter)){
                obj_button_keyboard.load_buttons()
				var _id_inimigo = instance_nearest(mouse_x, mouse_y, obj_char);
                if !_id_inimigo.bom _executar_ataque(_id_inimigo);	      
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
        var dano = floor(power(global.battle[global.turn].atk, 2) / (global.battle[global.turn].atk + global.battle[_id_inimigo.turn].def));
        if dano < 1 dano = 1;
        global.battle[_id_inimigo.turn].life -= dano;
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