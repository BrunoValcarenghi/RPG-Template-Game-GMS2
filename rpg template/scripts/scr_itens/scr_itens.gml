function create_itens(){

	global.itens = {
	
		"potion_s": {
		
			nome: "Small potion",
			spr: spr_potion_s,
	        descricao: "Heal 25 health points",
	        tipo: "heal",
	        valor: 25
		
		},
		
		"potion_g": {
		
			nome: "Great potion",
			spr: spr_potion_g,
	        descricao: "Heal 50 health points",
	        tipo: "heal",
	        valor: 75
		
		},
		
		"med_kit": {
		
			nome: "Kit Médico",
			sprite: spr_medkit,
	        descricao: "Heal full health points",
	        tipo: "heal_all",
	        valor: 0
		
		}
	
	}

}

function adicionar_item(_item_id, _quantidade) {
	
    var _item_encontrado = false;

    //ver se o jogador já tem o item
    for (var i = 0; i <array_length(global.inventario); i++) {
        
        if (global.inventario[i].item_id == _item_id) {
			
            // Se achou, apenas aumenta a quantidade
            global.inventario[i].quantidade += _quantidade;
            _item_encontrado = true;
            break; // Para o loop
			
        }
    }

    if (_item_encontrado == false) {
        var _novo_item = {
            item_id: _item_id,
            quantidade: _quantidade
        };
        
        array_push(global.inventario, _novo_item);
    }
    
}