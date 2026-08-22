//morte
if global.battle[turn].life <= 0 and !morto{
	global.battle[turn].life = 0
	//array_delete(global.battle, turn, 1)
	morto = true;
	//instance_destroy()
	
}
		
//se tiver vivo
if !morto{

	if bom{
	
		//posicao amigo
		if global.turn = turn and x < 90{x += spd}
		else if global.turn != turn and x > 80{x-=spd}
		if image_index >= 5 change_sprite(global.battle[turn].spr.idle)
		
	}
	else{
		
		//posicao inimigo
		if global.turn = turn and x >= 426 - 90{x -= spd}
		else if global.turn != turn and x <= 426 - 80{x+=spd}
	
		//acao do inimigo
		if global.turn = turn and !atacou{
			
			atacou = true
			alarm[0] = 60
			alarm[2] = 40
		
		}
		
		if image_index >= 5 change_sprite(global.battle[turn].spr.idle)
	
	}

	if (global.atk or global.item) and !bom{
		pisca(.2, 1)
		//image_xscale += pisca_timer/7
		image_yscale += pisca_timer/7
		}
	else {
		image_alpha = 1
		image_yscale = 1
	}
	
}
//morto
else{
	
	if global.battle[turn].life > 0 global.battle[turn].life = 0
	
	image_speed  = 0
	image_alpha = 0.3
	
		//acao morto, pula o turno
		if global.turn = turn{
			
			global.turn++
	
		}

}