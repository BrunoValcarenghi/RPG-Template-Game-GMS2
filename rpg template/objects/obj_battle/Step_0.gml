if !win{

	if global.turn >= array_length(global.battle) global.turn = 0

	if global.battle[global.turn].bom {
		global.seu_turno = true
	}
	else {
		global.seu_turno = false
	}

	ataque()
	defesa()
	item()

	vitoria_derrota()
	
}
else{
	layer_destroy_instances("buttons")
	layer_set_visible("ui", 0)
}