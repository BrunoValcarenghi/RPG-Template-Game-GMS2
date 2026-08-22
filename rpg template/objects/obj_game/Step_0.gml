if keyboard_check_pressed(vk_escape) 
and global.transition_room = -1
and !array_contains(impossible_pause_room, room){

	if room != rm_pause {
		global.sala_anterior = room
		transition(rm_pause, sq_fade_out, sq_fade_in)
	}
	else{
	
		transition(global.sala_anterior, sq_fade_out, sq_fade_in)
	
	}

}