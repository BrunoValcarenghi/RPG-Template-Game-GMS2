if cursor = -1{

	x = -10
	y = -10

}
else{

	x = button_array[cursor].x
	y = button_array[cursor].y

}

if array_length(button_array) > 0{

	if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_up){
	
		if cursor > 0 cursor --
		else if cursor = 0 cursor = array_length(button_array) - 1
		else if cursor = -1 cursor = 0

	} 

	if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_down){

		if cursor < array_length(button_array) - 1 cursor ++
		else if cursor = array_length(button_array) - 1 cursor = 0

	} 

}