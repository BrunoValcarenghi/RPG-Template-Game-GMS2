function use_item(_onde){
	
    var _item = global.inventory[global.item_selected]
	
	var _char = noone
	if _onde = "batalha" {
		_char = global.battle[global.char_selected]
		with (obj_char) {
		    if (turn == global.char_selected) {
		        part_system_position(part_system_create(ef_item), x, y)
		        break;
		    }
		}
	}
	if _onde = "menu" _char = global.team[global.char_selected];
	

    var _dados_item = struct_get(global.items, _item.item_id);

    //Check the item type.
    //Comprueba el tipo de objeto.
    //Verifica o tipo do item.
    switch (_dados_item.type) {
		
        case "heal":
            _char.life += _dados_item.value;
            
            //Prevent health from exceeding maximum HP.
            //Evita que la vida supere los PV máximos.
            //Impede que a vida ultrapasse o HP máximo.
            if (_char.life > _char.hp) {_char.life = _char.hp;}
            break;

        case "heal_all":
            _char.life = _char.hp;
            break;
		
    }
	
    _item.quantity -= 1;
	
	play_audio_random(sfx_item, 1, 1.2, .5)
	
    //Remove the item when its quantity reaches zero.
    //Elimina el objeto cuando su cantidad llega a cero.
    //Remove o item quando sua quantidade chega a zero.
    if (_item.quantity <= 0) {
        array_delete(global.inventory, global.item_selected, 1);
    }
	
	if global.item_selected >= array_length(global.inventory) global.item_selected = noone
	
}
