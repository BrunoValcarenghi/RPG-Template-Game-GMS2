depth = -y

if state = "walk" {
	
	mp_potential_step(xt, yt, spd, true)
	hsp = xt - x
	
	if distance_to_object(obj_player) < 50 state = "chase"
	
	
}
else if state = "chase"{

	mp_potential_step(obj_player.x, obj_player.y, spd, true)
	hsp = obj_player.x - x
	
	if distance_to_object(obj_player) > 100 state = "walk"

}

if hsp != 0 change_sprite(spr_enemy_run)
else change_sprite(spr_enemy_idle)

change_direction()

if distance_to_object(obj_player) < 5 and global.transition_room = -1{

	transition(rm_battle, sq_battle_out, sq_battle_in)

}