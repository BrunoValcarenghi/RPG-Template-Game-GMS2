function create_itens(){

	global.items = {
	
		"potion_s": {
		
			name: "Small potion",
			name_alt: "Small \npotion",
			spr: spr_potion_s,
	        description: "Heal 25 health points",
	        type: "heal",
	        value: 25
		
		},
		
		"potion_g": {
		
			name: "Great potion",
			name_alt: "Great \npotion",
			spr: spr_potion_g,
	        description: "Heal 50 health points",
	        type: "heal",
	        value: 50
		
		},
		
		"med_kit": {
		
			name: "Medic Kit",
			name_alt: "Medic \nKit",
			spr: spr_medkit,
	        description: "Heal full health points",
	        type: "heal_all",
	        value: 0
		
		}
	
	}

}

function adicionar_item(_item_id, _quantity) {
	
    var _item_found = false;

    //Check whether the player already has the item.
    //Comprueba si el jugador ya tiene el objeto.
    //Verifica se o jogador já possui o item.
    for (var i = 0; i <array_length(global.inventory); i++) {
        
        if (global.inventory[i].item_id == _item_id) {
			
            //If found, only increase its quantity.
            //Si se encuentra, solo aumenta su cantidad.
            //Se encontrar, apenas aumenta sua quantidade.
            global.inventory[i].quantity += _quantity;
            _item_found = true;
            break;
            //Stop the loop.
            //Detén el bucle.
            //Interrompe o loop.
			
        }
    }

    if (_item_found == false) {
        var _new_item = {
            item_id: _item_id,
            quantity: _quantity
        };
        
        array_push(global.inventory, _new_item);
    }
    
}
