event_inherited();

if global.button_selected != noone and !selected{ 
	image_alpha = .3
	ativo = false
	color = initial_color
	border_color = initial_border_color
}
else{
	image_alpha = 1
	ativo = true
}