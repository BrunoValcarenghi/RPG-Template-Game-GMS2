depth = -y
hsp = obj_player.x - x
change_direction()

if distance_to_object(obj_player) < 15 
and keyboard_check_pressed(global.key_interactive)
and state = "idle"{

	state = "dialogue"
	instance_create_layer(
		obj_cam.x, 
		obj_cam.y + camera_get_view_height(view_camera[0])/2.7, 
		"ui", 
		obj_dialogue, 
		{text: dialogue}
	)

}

if !instance_exists(obj_dialogue) state = "idle"