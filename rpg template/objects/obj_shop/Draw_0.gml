draw_set_halign(1)
draw_set_valign(1)
draw_set_font(f_nicopaint)
draw_set_colour(global.red_l)
draw_text(360, 80, "Options")
draw_text(224, 32, "Shop")
draw_text(80, 32, "NPC")

draw_set_colour(global.bege)
draw_set_font(f_nicoclean)
var _txt_cash = string_concat("Cash:\n", global.gold, "¢")
draw_text(360, 45, _txt_cash)

draw_set_colour(global.red_l)
draw_set_font(f_nicopaint)
draw_text(80, 48, global.npc_shop.npc_name)
var _frame = (current_time / 1000) * sprite_get_speed(global.npc_shop.npc_icon);
draw_sprite(global.npc_shop.npc_icon, _frame, 64, 64)

draw_set_halign(0)
draw_set_valign(0)
draw_set_colour(global.bege)
draw_text(30, 112, global.npc_shop.npc_talk[talk_n])

if global.button_selected != noone draw_set_alpha(0.3)

if array_length(global.sell) <= 0{

	draw_set_halign(1)
	draw_set_valign(1)

	draw_set_font(f_nicopaint)
	draw_set_colour(global.red_l)

	draw_text(224, 72 , "Empty")

}
else{

	for(var j = 0; j < array_length(global.sell); j++){
		
		var _item = struct_get(global.itens, global.sell[j].item_id);
		var _y = 64 + 36*j
		
		draw_sprite_ext(spr_slot_1, 0, 224, _y, 9, 2, 0, image_blend, draw_alpha)
		
		draw_sprite_ext(spr_slot_3, 0, 170, _y, 1.5, 1.5, 0, image_blend, draw_alpha)
		draw_sprite(_item.spr, 0, 170, _y)
		
		draw_set_halign(0)
		draw_set_valign(1)
		
		draw_set_font(f_nicopups)
		draw_set_colour(global.bege)
		
		draw_text(185, _y - 6, _item.nome)
		draw_text(185, _y + 6, string_concat("Cost: ", global.sell[j].value, "¢"))
	
	}
	
	create_button_item()

}

draw_set_alpha(1)