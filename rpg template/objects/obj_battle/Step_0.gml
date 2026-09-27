if !win{

	if global.turn >= array_length(global.battle) global.turn = 0

	if global.battle[global.turn].is_ally {
		global.is_player_turn = true
	}
	else {
		global.is_player_turn = false
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
