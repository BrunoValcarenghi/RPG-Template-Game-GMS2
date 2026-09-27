turn = 0
spd = 1
//Speed used during battle.
//Velocidad utilizada durante la batalla.
//Velocidade usada durante a batalha.

spd_char = 0
//Speed value used by the character stats.
//Valor de velocidad usado por las estadísticas del personaje.
//Valor de velocidade usado pelos atributos do personagem.

has_attacked = false
has_defended = false
dead = false

blink_timer = .04
//Selected state.
//Estado seleccionado.
//Estado selecionado.

if x <= 80{is_ally = true}
else is_ally = false

hit = 0;

draw_hit = function() {
    if (hit > 0) {
        gpu_set_fog(true, c_white, 0, 1);
		draw_self();
        gpu_set_fog(false, c_white, 0, 1);
		if is_ally x-=2
		else x+=2
        hit--;

    } else {
        draw_self();
    }
}

sprite_attack = function(){

	change_sprite(global.battle[turn].spr.at)

}
