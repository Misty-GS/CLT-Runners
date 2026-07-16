if (global.state == "game_over") {
    if (fade_alpha < 1) {
        fade_alpha += 0.05
		
        if (fade_alpha >= 1) {
            fade_alpha = 1
            fade_completo = true
        }
    }
	
	if (desenhar_transicao) {
		transicao_alpha += velocidade_transicao
    
	    // Quando a tela ficar 100% preta, mudamos de sala
		if (transicao_alpha >= 1) {
			room_goto(rm_start)
		}
	}
} else {

    fade_alpha = 0
    fade_completo = false
}

