global.item_selected = noone

draw_alpha = 1

create_button_item = function(){
	
	if !instance_exists(obj_bp_item_sell){
	
		for(var j = array_length(global.sell) - 1; j >= 0; j--){
	
			var _y = 48 + 36*j
			instance_create_layer(152, _y, "buttons", obj_bp_item_sell, {sell_id: j})
			
		}
		
		obj_button_keyboard.load_buttons()
		if !instance_exists(obj_cursor) obj_button_keyboard.cursor = array_length(global.sell)
		
	}

}

talk_n = irandom(array_length(global.npc_shop.npc_talk) - 1) 