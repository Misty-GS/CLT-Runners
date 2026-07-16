//Variavel de verificação se o player apertou espaço
espaco = keyboard_check_pressed(vk_space)

//Pegando id da Layer e depois pegando id do background da layer
var _lay_id = layer_get_id("Background")
var _back_id = layer_background_get_id(_lay_id)

//Verificação se apertou espaço
if espaco {
	if (page_index < 3) {
        page_index += 1
        layer_background_index(_back_id, page_index)
    } else {
		//Se já passou todos os frames de introdução vai para room game
		global.state = "game"
        room_goto(rm_jogo)
    }
}