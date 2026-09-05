obj_player.trava_on()

xscale = 26
yscale = 3.5

image_xscale = xscale
image_yscale = yscale

i = 0

alarm[0] = 2

next = function(){
	
	alarm[0] = 2
	i++
	if instance_exists(obj_b_options) instance_destroy(obj_b_options)
	obj_button_keyboard.cursor =-1
	obj_button_keyboard.load_buttons()

}