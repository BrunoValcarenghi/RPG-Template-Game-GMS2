event_inherited();

npc_name = "Ciclano"
npc_icon = spr_player2_icon

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
			text:	"Would you like me to join the\n"
			+		"team?",
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
		
		array_push(global.team, global.ciclano)
		instance_destroy()
		obj_dialogue.i += 2

	}

]