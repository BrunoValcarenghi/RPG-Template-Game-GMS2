function get_input(){

key_up = keyboard_check(global.key_up)
key_left = keyboard_check(global.key_left)
key_down =  keyboard_check(global.key_down)
key_right = keyboard_check(global.key_right)

key_sprint = keyboard_check(global.key_sprint)

key_interactive = keyboard_check_pressed(global.key_interactive)

}

function move_col(){
	
	#region //movement

	if key_sprint spd = run
	else spd = wlk

	hsp = (key_right - key_left) * spd
	vsp = (key_down - key_up) * spd

	

	#endregion

	#region //collision


	col = [
		obj_wood,
		obj_chest,
		]

	if (place_meeting(x+hsp, y, col)){
	
		while (!place_meeting(x+sign(hsp), y, col)){
		x = x + sign(hsp)
		}
	
		hsp = 0

	}

	x += hsp

	if (place_meeting(x, y+vsp, col)){
	
		while (!place_meeting(x, y+sign(vsp), col)){
		y = y + sign(vsp)
		}
	
		vsp = 0

	}

	y += vsp
	#endregion

}
	
function sprite(){
	
	if trava{
		hsp = 0
		vsp = 0
	}
	
	if hsp != 0 or vsp != 0 change_sprite(global.team[0].spr.run)
	else change_sprite(global.team[0].spr.idle)

	change_direction()

}

function change_sprite(_spr){

	if sprite_index != _spr{
	
		image_index = 0
		sprite_index = _spr
	
	}

}

function change_direction(){
	
	if hsp != 0 dir = hsp
	
	if dir < 0 and visual_xscale > -1 visual_xscale -= .25
	if dir > 0 and visual_xscale <  1 visual_xscale += .25

}