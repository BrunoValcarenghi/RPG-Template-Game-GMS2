if global.button_selected = noone{ 
	image_alpha = .3
	color = initial_color
	border_color = initial_border_color
}
else{
	image_alpha = 1
}


if ativo and global.transition_room = -1 and image_alpha = 1{

	if keyboard_check_pressed(vk_enter)
	or (mouse_check_button_pressed(mb_left)
	and place_meeting(x, y, obj_cursor)){
		
		play_audio_random(sfx_button, .5)
	
		//compra
		var _item = global.sell[global.item_selected]
		
		if global.gold >= _item.value{
			
			play_audio_random(sfx_item, .5)
			
			global.gold -= _item.value
			
			adicionar_item(_item.item_id, 1)	
		
		}
		else play_audio_random(sfx_damage, .5)
		
		global.button_selected = noone
		global.item_selected = noone
		instance_destroy(obj_bp_item_sell)
		obj_button_keyboard.load_buttons()
		obj_shop.draw_alpha = 1
	
	}

}