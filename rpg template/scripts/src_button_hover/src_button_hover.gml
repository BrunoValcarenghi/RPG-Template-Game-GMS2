function button_hover_1(){
	
	var _cursor = [obj_button_keyboard]
	if instance_exists(obj_cursor) _cursor = [obj_cursor, obj_button_keyboard]
	
	
	if place_meeting(x, y, _cursor){
		if instance_exists(obj_cursor) and place_meeting(x, y, obj_cursor) obj_button_keyboard.cursor = -1
		ativo = true
	}
	
	else if !place_meeting(x,y,_cursor){ativo = false}
	
	if ativo{

		if color != hover_color and image_alpha = 1 play_audio_random(sfx_button, .3)
		
		color = hover_color
		border_color = hover_border_color
	
		image_xscale = xscale + scale_sum
		image_yscale = yscale + scale_sum
		
	}
	else{
	
		color = initial_color
		border_color = initial_border_color
	
		image_xscale = xscale
		image_yscale = yscale
	
	}
	

}

function button_hover_2(_initial_x, _final_x){
	
	var _cursor = [obj_button_keyboard]
	if instance_exists(obj_cursor) _cursor = [obj_cursor, obj_button_keyboard]
	
	if place_meeting(x, y, _cursor){
		if instance_exists(obj_cursor) and place_meeting(x, y, obj_cursor) obj_button_keyboard.cursor = -1
		ativo = true
	}
	
	else if !place_meeting(x,y,_cursor) and (
	_cursor[0].x > x 
	or _cursor[0].y > y+16 
	or _cursor[0].y < y-16
	){ativo = false}
	
	
	if ativo{

		if color != hover_color and image_alpha = 1 play_audio_random(sfx_button, .3)
		
		color = hover_color
		border_color = hover_border_color
		
		if text_x < 5 text_x += 0.3
		if x < _final_x x += 3.5
		
		image_xscale = xscale + scale_sum
		image_yscale = yscale + scale_sum
	
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

function button_hover_selected(){
	
	if global.char_selected = char_id ativo = true
	else{
	
		var _cursor = [obj_button_keyboard]
		if instance_exists(obj_cursor) _cursor = [obj_cursor, obj_button_keyboard]
	
		if place_meeting(x, y, _cursor){
			if instance_exists(obj_cursor) and place_meeting(x, y, obj_cursor) obj_button_keyboard.cursor = -1
			ativo = true
		}
	
		else if !place_meeting(x,y,_cursor){ativo = false}
	
		if ativo{
		
			if image_alpha != .8 play_audio_random(sfx_button, .3)
			image_alpha = .8
			image_blend = global.bege
		
		}
		else{
		
			if image_alpha > .7 image_alpha = 0
			pisca(0, 0.6)
			image_blend = global.red_l
	
		}
	}
}

function button_hover_selected_item(){
	
	if global.item_selected = inventory_id ativo = true
	else{
	
		var _cursor = [obj_button_keyboard]
		if instance_exists(obj_cursor) _cursor = [obj_cursor, obj_button_keyboard]
	
		if place_meeting(x, y, _cursor){
			if instance_exists(obj_cursor) and place_meeting(x, y, obj_cursor) obj_button_keyboard.cursor = -1
			ativo = true
		}
	
		else if !place_meeting(x,y,_cursor){ativo = false}
	
		if ativo{
		
			if image_alpha != .8 play_audio_random(sfx_button, .3)
			image_alpha = .8
			image_blend = global.bege
		
		}
		else{
		
			if image_alpha > .7 image_alpha = 0
			image_blend = global.red_l
	
		}
	}
}