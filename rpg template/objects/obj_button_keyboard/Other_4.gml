load_buttons = function(){
	
	button_array = [];

	var _layer_id = layer_get_id("buttons");
	var _elements = layer_get_all_elements(_layer_id);

	for (var i = 0; i < array_length(_elements); i++) {
	    if (layer_get_element_type(_elements[i]) == layerelementtype_instance) {
        
	        var _inst = layer_instance_get_instance(_elements[i]);
	        array_push(button_array, _inst);
		
	    }
	}

}

load_buttons()

cursor = -1