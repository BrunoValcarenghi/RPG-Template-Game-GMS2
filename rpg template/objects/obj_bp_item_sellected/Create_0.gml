image_xscale = 100
image_yscale = 36
pisca_timer = .04
image_alpha = 0
image_blend = global.white
ativo = false

function selecionar_slot_party(_slot_clicado) {
    
	//Se nada estiver selecionado ainda (ou se for invalido/noone)
    if (global.char_selected == noone or global.char_selected < 0) {
        global.char_selected = _slot_clicado;
        exit;
    }
    
    //Cancela a seleção mesmo slot
    if (global.char_selected == _slot_clicado) and array_length(global.team) > 1{
        global.char_selected = -1;
        exit;
    }
    
    // TROCA DE QUALQUER SLOT PARA QUALQUER SLOT
    var _origin = global.char_selected;
    var _target = _slot_clicado;
    
    var _temp = global.team[_origin];
    global.team[_origin] = global.team[_target];
    global.team[_target] = _temp;
    
    // Reseta a variável de controle
    global.char_selected = -1;
    
    // Desativa a interface/recarrega botões
    if (instance_exists(obj_bp_change)) {
        obj_bp_change.selected = false;
        obj_bp_change.desactive();
    }
}