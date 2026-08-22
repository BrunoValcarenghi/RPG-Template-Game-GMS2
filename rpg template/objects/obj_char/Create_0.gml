turn = 0
spd = 1  //spd in battle

spd_char = 0 //spd stats

atacou = false
defendeu = false
morto = false

pisca_timer = .04 //selected

if x <= 80{bom = true}
else bom = false

hit = 0;

desenhar_hit = function() {
    if (hit > 0) {
        gpu_set_fog(true, c_white, 0, 1);
		draw_self();
        gpu_set_fog(false, c_white, 0, 1);
		if bom x-=2
		else x+=2
        hit--;

    } else {
        draw_self();
    }
}

sprite_attack = function(){

	change_sprite(global.battle[turn].spr.at)

}