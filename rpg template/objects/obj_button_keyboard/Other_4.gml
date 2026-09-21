cursor = -1

load_buttons = function(_layer = "buttons", _bom = 0){
	
	button_array = [];

	var _layer_id = layer_get_id(_layer);
	var _elements = layer_get_all_elements(_layer_id);

	for (var i = 0; i < array_length(_elements); i++) {
	    if (layer_get_element_type(_elements[i]) == layerelementtype_instance) {
        
	        var _inst = layer_instance_get_instance(_elements[i]);
			
			if _layer = "char"{
				
				if _inst.object_index = obj_char{
				
					if !_bom and !_inst.bom array_push(button_array, _inst);
					else if _bom and _inst.bom array_push(button_array, _inst);
				}
				else array_push(button_array, _inst)
			}
			
	        else array_push(button_array, _inst);
		
	    }
	}
	
	if array_length(button_array) > 0 and !instance_exists(obj_cursor) cursor = 0

}

load_buttons()