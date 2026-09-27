image_xscale = 100
image_yscale = 36
blink_timer = .04
image_alpha = 0
image_blend = global.white
active = false

function selecionar_slot_party(_clicked_slot) {
    
	//If nothing is selected yet, or the selection is invalid/noone.
	//Si todavía no hay nada seleccionado, o la selección es inválida/noone.
	//Se nada estiver selecionado ainda, ou a seleção for inválida/noone.
    if (global.char_selected == noone or global.char_selected < 0) {
        global.char_selected = _clicked_slot;
        exit;
    }
    
    //Cancel the selection of the same slot.
    //Cancela la selección del mismo espacio.
    //Cancela a seleção do mesmo slot.
    if (global.char_selected == _clicked_slot) and array_length(global.team) > 1{
        global.char_selected = -1;
        exit;
    }
    
    //Swap any slot with any other slot.
    //Intercambia cualquier espacio con cualquier otro espacio.
    //Troca qualquer slot por qualquer outro slot.
    var _origin = global.char_selected;
    var _target = _clicked_slot;
    
    var _temp = global.team[_origin];
    global.team[_origin] = global.team[_target];
    global.team[_target] = _temp;
    
    //Reset the control variable.
    //Reinicia la variable de control.
    //Reseta a variável de controle.
    global.char_selected = -1;
    
    //Disable the interface and reload the buttons.
    //Desactiva la interfaz y recarga los botones.
    //Desativa a interface e recarrega os botões.
    if (instance_exists(obj_bp_change)) {
        obj_bp_change.selected = false;
        obj_bp_change.desactive();
    }
}
