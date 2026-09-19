event_inherited();

npc_name = "Venda"
npc_icon = spr_npc_icon

load_dialogue = function(){

	dialogue = [

		{
			who: npc_name,
			avatar: npc_icon,
			text: "Hello, how are you?",
			options: noone
		},
	
		{
			who: global.team[0].name,
			avatar: global.team[0].spr.icon,
			text: "I'm sure!",
			options: noone
		},
	
		{
			who: npc_name,
			avatar: npc_icon,
			text: "Do you want buy anything?",
			options: ["No", "Yes"]
		},
	
		{
			who: npc_name,
			avatar: npc_icon,
			text: "Ok!",
			options: noone
		}
	
	]

}
load_dialogue()

event = [

	function(){},
	
	function(){
		
		global.sala_anterior = room
		transition(rm_shop, sq_fade_out, sq_fade_in)
		
		global.npc_shop = {
		
			npc_name: "Venda",
			npc_icon: spr_npc_icon,
			npc_talk: [
				"Over here, \nstranger!",
				"What're \nya buyin'?",
				"Got some- \nthin' that \nmight \ninterest!",
			]
		
		}
		
		global.sell = [
			{item_id: "potion_s", value: 10},
			{item_id: "potion_g", value: 30},
			{item_id: "med_kit", value: 50},
		]
		
		obj_dialogue.i += 2

	}

]