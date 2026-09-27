function item(){

	if global.item {
		
		//Create the item buttons if they do not already exist.
		//Crea los botones de objetos si todavía no existen.
		//Cria os botões de itens caso ainda não existam.
		if !instance_exists(obj_b_item_individual) {
			for (var i = array_length(global.inventory) - 1; i >= 0; i--) {
				instance_create_layer(288 + i * 48, 176, "item_buttons", obj_b_item_individual, {item_id: i});
			}
			obj_button_keyboard.load_buttons("item_buttons");
		}
		
		//Only execute the logic when an item is selected.
		//Solo ejecuta la lógica cuando hay un objeto seleccionado.
		//Só executa a lógica quando houver um item selecionado.
		if global.item_selected != noone {
			
			//Find living allies.
			//Busca aliados vivos.
			//Procura aliados vivos.
			var _living = [];
			with (obj_char) {
				if (is_ally and !dead) array_push(_living, id);
			}

			//Only one living ally remains.
			//Solo queda un aliado vivo.
			//Apenas um aliado vivo permanece.
			if array_length(_living) == 1 {
				global.char_selected = _living[0].turn;
				use_item("batalha");
				
				obj_button_keyboard.load_buttons();
				can_select = false; 
				if instance_exists(obj_b_item_individual) instance_destroy(obj_b_item_individual);
				global.item = false;
				exit;
			}
			
			//More than one living ally remains.
			//Queda más de un aliado vivo.
			//Há mais de um aliado vivo.
			if (keyboard_check_released(vk_enter)) {
				can_select = true;
			}

			var _clicou_mouse = mouse_check_button_pressed(mb_left) and collision_point(mouse_x, mouse_y, obj_char, true, false);
			var _pressionou_enter = keyboard_check_pressed(vk_enter) and can_select;

			if (_clicou_mouse or _pressionou_enter) {
				var _ally_id = noone;

				//Get the ally selected by mouse click.
				//Obtiene el aliado seleccionado con el clic del ratón.
				//Obtém o aliado selecionado pelo clique do mouse.
				if (_clicou_mouse) {
					_ally_id = instance_nearest(mouse_x, mouse_y, obj_char);
				} 
				//Get the ally selected through the keyboard cursor.
				//Obtiene el aliado seleccionado mediante el cursor del teclado.
				//Obtém o aliado selecionado pelo cursor do teclado.
				else if (_pressionou_enter) {
					if (instance_exists(obj_button_keyboard)) {
						var _cursor = obj_button_keyboard.cursor;
						var _array = obj_button_keyboard.button_array;

						if (_cursor >= 0 and _cursor < array_length(_array)) {
							_ally_id = _array[_cursor];
						}
					}
				}

				//If a valid living ally instance was found.
				//Si se encontró una instancia válida de un aliado vivo.
				//Se uma instância válida de aliado vivo for encontrada.
				if (instance_exists(_ally_id) and _ally_id.is_ally and !_ally_id.dead) {
					
					//Set the turn of the selected ally, as in the single-ally case.
					//Define el turno del aliado seleccionado, igual que en el caso de un solo aliado.
					//Define o turno do aliado selecionado, assim como no caso de um único aliado.
					global.char_selected = _ally_id.turn;

					//Execute the item use for the battle context.
					//Ejecuta el uso del objeto para el contexto de batalla.
					//Executa o uso do item para o contexto de batalha.
					use_item("batalha");

					//Clean up and reset the buttons.
					//Limpia y reinicia los botones.
					//Limpa e reinicia os botões.
					obj_button_keyboard.load_buttons();
					can_select = false; 
					if (instance_exists(obj_b_item_individual)) {
						instance_destroy(obj_b_item_individual);
					}
					global.item = false;
				}
			}
		}
	}
}
