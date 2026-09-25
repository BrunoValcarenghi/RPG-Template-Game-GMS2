instance_create_layer(213, 85, "Instances", obj_level_up, {txt: _txt_gold})

for(var i = 0; i < array_length(_txt_up); i++){
		
	instance_create_layer(213, 115 + i*30, "Instances", obj_level_up, {txt: _txt_up[i]})
	
} 