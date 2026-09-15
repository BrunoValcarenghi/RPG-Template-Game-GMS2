global.char_selected = noone
global.item_selected = noone

draw_stats = noone

draw_alpha_inventory = 1

view_stats = function(){

	draw_stats = global.char_selected

}

create_button_item = function(){
	
	if !instance_exists(obj_bp_item){
	
		for(var j = array_length(global.inventario) - 1; j >= 0; j--){
	
			var _y = 48 + 36*j
			instance_create_layer(152, _y, "buttons", obj_bp_item, {inventory_id: j})
	
		}
		
		obj_button_keyboard.load_buttons()
		if !instance_exists(obj_cursor) obj_button_keyboard.cursor = array_length(global.inventario)
	
	}

}