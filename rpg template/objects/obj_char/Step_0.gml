//Death state.
//Estado de muerte.
//Estado de morte.
if global.battle[turn].life <= 0 and !dead{
	global.battle[turn].life = 0
	//Disabled debug code that would remove the current battle entry.
	//Código de depuración desactivado que eliminaría la entrada actual de la batalla.
	//Código de depuração desativado que removeria a entrada atual da batalha.
	dead = true;
	//Disabled instance destruction call.
	//Llamada de destrucción de instancia desactivada.
	//Chamada de destruição da instância desativada.
	
}
		
//If the character is alive.
//Si el personaje está vivo.
//Se o personagem estiver vivo.
if !dead{

	if is_ally{
	
		//Ally position.
		//Posición del aliado.
		//Posição do aliado.
		if global.turn = turn and x < 90{x += spd}
		else if global.turn != turn and x > 80{x-=spd}
		if image_index >= 5 change_sprite(global.battle[turn].spr.idle)
		
	}
	else{
		
		//Enemy position.
		//Posición del enemigo.
		//Posição do inimigo.
		if global.turn = turn and x >= 426 - 90{x -= spd}
		else if global.turn != turn and x <= 426 - 80{x+=spd}
	
		//Enemy action.
		//Acción del enemigo.
		//Ação do inimigo.
		if global.turn = turn and !has_attacked{
			
			has_attacked = true
			alarm[0] = 60
			alarm[2] = 40
		
		}
		
		if image_index >= 5 change_sprite(global.battle[turn].spr.idle)
	
	}

	if global.atk and !is_ally{
		pisca(.2, 1)
		//Disabled horizontal scaling effect during selection feedback.
		//Efecto de escala horizontal desactivado durante la selección.
		//Efeito de escala horizontal desativado durante o feedback de seleção.
		image_yscale += blink_timer/7
	}
	else if global.item and is_ally{
		pisca(.2, 1)
		//Disabled horizontal scaling effect during selection feedback.
		//Efecto de escala horizontal desactivado durante la selección.
		//Efeito de escala horizontal desativado durante o feedback de seleção.
		image_yscale += blink_timer/7
	}
	else {
		image_alpha = 1
		image_yscale = 1
	}
	
}
//Dead state.
//Estado muerto.
//Estado morto.
else{
	
	if global.battle[turn].life > 0 global.battle[turn].life = 0
	
	image_speed  = 0
	image_alpha = 0.3
	
		//Dead character action: skip the turn.
		//Acción del personaje muerto: salta el turno.
		//Ação do personagem morto: pula o turno.
		if global.turn = turn{
			
			global.turn++
	
		}

}
