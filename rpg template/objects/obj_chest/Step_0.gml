if distance_to_object(obj_player) < 10 
and keyboard_check_pressed(global.key_interactive)
and state = "closed"{
	
	if state = "closed"
	image_speed = 1
	
	state = "opened"
	adicionar_item(item_id, 1)
	
	play_audio_random(sfx_item)
	instance_create_layer(x, y, "ui", obj_recive_item, {id_item: string(item_id)})

}
