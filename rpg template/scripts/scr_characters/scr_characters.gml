function create_char(_name, _spr, _bom, _hp, _atk, _def, _spd, _lvl, _xp = 0) constructor{

	name = _name
	spr = _spr
	bom = _bom

	//stats
	hp  = _hp  
	atk = _atk
	def = _def
	spd = _spd

	//variaveis
	life = hp;
	lvl = _lvl

	xp = _xp

}

global.fulano = new create_char(
	"Fulano", 
	{idle: spr_player_idle, at: spr_player_at, icon: spr_player_icon},
	true,
	50,
	20,
	20,
	10,
	1
) 

global.ciclano = new create_char(
	"Ciclano", 
	{idle: spr_player2_idle, at: spr_player2_at, icon: spr_player2_icon},
	true,
	60,
	15,
	30,
	5,
	1
) 

global.beltrano = new create_char(
	"Beltrano", 
	{idle: spr_player3_idle, at: spr_player3_at, icon: spr_player3_icon},
	true,
	40,
	30,
	15,
	15,
	1
) 

global.hollow = new create_char(
	"Hollow", 
	{idle: spr_enemy_idle, at: spr_enemy_at},
	false,
	20,
	10,
	15,
	8,
	1,
	100
) 

global.team = [global.fulano, global.ciclano]