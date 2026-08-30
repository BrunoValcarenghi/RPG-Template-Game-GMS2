function start_game(){
	
	//initial team
	create_team()
	global.team = [global.fulano]
	
	//controlls
	global.key_up = ord("W")
	global.key_left = ord("A")
	global.key_down =  ord("S")
	global.key_right = ord("D")

	global.key_sprint = vk_control

	global.key_interactive = ord("E")
	
}