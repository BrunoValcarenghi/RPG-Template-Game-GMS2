function start_game(){
	
	//Initialize the team.
	//Inicializa el equipo.
	//Inicializa a equipe.
	create_team()
	global.team = [global.default_character]
	
	//Controls.
	//Controles.
	//Controles.
	global.key_up = ord("W")
	global.key_left = ord("A")
	global.key_down =  ord("S")
	global.key_right = ord("D")

	global.key_sprint = vk_control

	global.key_interactive = ord("E")
	
	ini_open("save.ini")
	
		if ini_read_real("config", "mouse", 1) instance_create_layer(x, y, "cursor", obj_cursor)
		
		window_set_fullscreen(ini_read_real("config", "fullscreen", 1))
	
	ini_close()
	
	//Inventory.
	//Inventario.
	//Inventário.
	create_itens()
	global.inventory = [
		{item_id: "potion_s", quantity: 2},
		{item_id: "potion_g", quantity: 1},
	]
	
	global.gold = 100
	
}
