for(var i = 0; i < array_length(_txt_up); i++){
		
	instance_create_layer(213, 100 + i*36, "Instances", obj_level_up, {txt: _txt_up[i]})
	
} 