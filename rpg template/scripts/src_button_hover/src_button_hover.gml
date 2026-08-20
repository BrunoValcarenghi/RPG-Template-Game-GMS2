function button_hover_1(){
	
	//cor
	if place_meeting(x, y, obj_cursor){
		
		//if color != hover_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = hover_color
		border_color = hover_border_color
		
		image_xscale = xscale + 0.1
		image_yscale = yscale + 0.1

	}
	else{
		
		color = initial_color
		border_color = initial_border_color
		
		image_xscale = xscale
		image_yscale = yscale
		
	}

}

function button_hover_2(_initial_x, _final_x){
	
	if place_meeting(x, y, obj_cursor){ativo = true}
	
	else if !place_meeting(x,y,obj_cursor) and (
	obj_cursor.x > x 
	or obj_cursor.y > y+16 
	or obj_cursor.y < y-16
	){ativo = false}
	
	
	if ativo{

		//if color != hover_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = hover_color
		border_color = hover_border_color
		
		if text_x < 5 text_x += 0.3
		if x < _final_x x += 3.5
		
		image_xscale = xscale + 0.1
		image_yscale = yscale + 0.1
	
	}
	else{
		
		color = initial_color
		border_color = initial_border_color
		
		if text_x > 0 text_x -= 0.5
		if x > _initial_x x -= 4.3
		
		image_xscale = xscale
		image_yscale = yscale

	}

}

function button_next_previus_hover(){
	
	if place_meeting(x, y, obj_cursor){
		
		image_xscale = 1.1
		image_yscale = 1.1
		
	}
	else{
	
		image_xscale = 1
		image_yscale = 1
	
	}
	
}

function button_hover_battle(xscale = 1.8, yscale = 2){
	
	//cor
	if place_meeting(x, y, obj_cursor){
		
		if color != hover_color and image_alpha = 1 audio_play_sound(sfx_button, 20, 0, global.volume/2)
		
		color = hover_color
		border_color = hover_border_color
		
		image_xscale = xscale + .1
		image_yscale = yscale + .1

	}
	else{
		
		color = initial__color
		border_color = initial_border_color
		
		image_xscale = xscale
		image_yscale = yscale
		
	}

}