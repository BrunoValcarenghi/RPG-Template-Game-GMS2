if distance_to_object(obj_player) < 10 
and keyboard_check_pressed(global.key_interactive)
and state = "closed"{
	
	if state = "closed"
	image_speed = 1
	
	state = "opened"
	adicionar_item(item_id, 1)
	
	//mostar resultado
	show_message(item_id)

}