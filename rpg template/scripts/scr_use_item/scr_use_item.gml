function use_item(_onde){

    var _item = global.inventario[global.item_id_atual]
	
	var _char = noone
	if _onde = "batalha" {
		_char = global.battle[global.char_id_atual]
		with (obj_char) {
		    if (vez == global.char_id_atual) {
		        part_system_position(part_system_create(ef_item), x, y)
		        break;
		    }
		}
	}
	if _onde = "menu" _char = global.personagens[global.id_char];
	

    var _dados_item = struct_get(global.itens, _item.item_id);

    //Verifica o tipo do item
    switch (_dados_item.tipo) {
		
        case "heal":
            _char.life += _dados_item.valor;
            
            // Impede que a vida passe do HP máximo
            if (_char.life > _char.hp) {_char.life = _char.hp;}
            break;

        case "heal_all":
            _char.life = _char.hp;
            break;
		
    }
	
    _item.quantidade -= 1;
	
	play_audio_random(sfx_item, 1, 1.2, .5)
	
    //Se a quantidade zerar remove
    if (_item.quantidade <= 0) {
        array_delete(global.inventario, global.item_id_atual, 1);
    }
	
	if global.item_id_atual >= array_length(global.inventario) global.item_id_atual = 0
	
	if _onde = "menu" room_goto(Room_pause)

}