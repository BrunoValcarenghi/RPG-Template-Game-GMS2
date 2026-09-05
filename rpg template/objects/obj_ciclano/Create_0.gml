hsp = 1
visual_xscale = 1
dir = 1

state = "idle" 


dialogue = [

	{
		who: "Ciclano",
		avatar: spr_player2_icon,
		text: "Hello, how are you?",
		options: noone
	},
	
	{
		who: "Fulano",
		avatar: spr_player_icon,
		text: "I'm sure!",
		options: noone
	},
	
	{
		who: "Ciclano",
		avatar: spr_player2_icon,
		text: "Would you like me to join the team?",
		options: ["No", "Yes"]
	},
	
	{
		who: "Ciclano",
		avatar: spr_player2_icon,
		text: "Ok!",
		options: noone
	}
	
]

option0 = function(){}
option1 = function(){
	
	instance_destroy()
	obj_dialogue.i += 2

}