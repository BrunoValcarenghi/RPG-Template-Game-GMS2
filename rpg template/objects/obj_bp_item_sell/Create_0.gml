image_xscale = 144
image_yscale = 32
pisca_timer = .04
image_alpha = 0
image_blend = global.white
ativo = false
selected = false

desactive = function(){

	global.button_selected = noone
	global.item_selected = noone
	instance_destroy(obj_bp_item_sellected)
	obj_button_keyboard.load_buttons()
	obj_shop.draw_alpha = 1

}