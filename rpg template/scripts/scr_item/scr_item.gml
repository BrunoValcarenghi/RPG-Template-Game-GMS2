function item(){

	if global.item {
		
		// Cria os botões de itens caso não existam
		if !instance_exists(obj_b_item_individual) {
			for (var i = array_length(global.inventario) - 1; i >= 0; i--) {
				instance_create_layer(288 + i * 48, 176, "item_buttons", obj_b_item_individual, {item_id: i});
			}
			obj_button_keyboard.load_buttons("item_buttons");
		}
		
		// Só executa a lógica se houver um item selecionado
		if global.item_selected != noone {
			
			// Procura aliados vivos
			var _vivos = [];
			with (obj_char) {
				if (bom and !morto) array_push(_vivos, id);
			}

			// Apenas 1 aliado vivo
			if array_length(_vivos) == 1 {
				global.char_selected = _vivos[0].turn;
				use_item("batalha");
				
				obj_button_keyboard.load_buttons();
				pode_selecionar = false; 
				if instance_exists(obj_b_item_individual) instance_destroy(obj_b_item_individual);
				global.item = false;
				exit;
			}
			
			//mais de um aliado vivo
			if (keyboard_check_released(vk_enter)) {
				pode_selecionar = true;
			}

			var _clicou_mouse = mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_char, true, false);
			var _pressionou_enter = keyboard_check_pressed(vk_enter) and pode_selecionar;

			if (_clicou_mouse or _pressionou_enter) {
				var _id_aliado = noone;

				// Pega o aliado pelo clique
				if (_clicou_mouse) {
					_id_aliado = instance_nearest(mouse_x, mouse_y, obj_char);
				} 
				// Pega o aliado pelo teclado (cursor)
				else if (_pressionou_enter) {
					if (instance_exists(obj_button_keyboard)) {
						var _cursor = obj_button_keyboard.cursor;
						var _array = obj_button_keyboard.button_array;

						if (_cursor >= 0 and _cursor < array_length(_array)) {
							_id_aliado = _array[_cursor];
						}
					}
				}

				// Se encontrou uma instância válida de aliado vivo
				if (instance_exists(_id_aliado) and _id_aliado.bom and !_id_aliado.morto) {
					
					// Define o turno do aliado escolhido (assim como no caso de 1 aliado)
					global.char_selected = _id_aliado.turn;

					// Executa o uso do item (mesmo nome "batalha")
					use_item("batalha");

					// Limpeza e reseta os botões
					obj_button_keyboard.load_buttons();
					pode_selecionar = false; 
					if (instance_exists(obj_b_item_individual)) {
						instance_destroy(obj_b_item_individual);
					}
					global.item = false;
				}
			}
		}
	}
}

function cancela_item(){
	
	instance_destroy(obj_item)
	instance_destroy(obj_inventario_battle)
	instance_destroy(obj_item_battle_cursor)
	instance_destroy(obj_b_cancelar)
	global.item = false
	global.battle_inventaro = false

}