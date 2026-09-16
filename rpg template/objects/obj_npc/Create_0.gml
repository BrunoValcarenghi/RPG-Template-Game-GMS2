event_inherited();

npc_name = "NPC Shopping"
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
			text:	"\n"
			+		"",
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
		
		show_message("evento esta no create")

	}

]