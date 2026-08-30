x = obj_cam.x 
y = obj_cam.y + camera_get_view_height(view_camera[0])/2.7

if keyboard_check_pressed(vk_enter) {
	i++
}


if i > array_length(text)-1{ 
	
	instance_destroy()
	obj_player.trava_off()
}