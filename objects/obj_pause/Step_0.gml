pause = keyboard_check_pressed(vk_escape)

if pause {
	if global.state == "pause" {
		global.state = "game"
	}else if global.state == "game" {
		global.state = "pause"
	}else {
		
	}
	
}

if (global.state == "pause") {
    if (fade_alpha < 1) {
        fade_alpha += 0.05
		
        if (fade_alpha >= 1) {
            fade_alpha = 1
            fade_completo = true
        }
    }
	if !pausado {
		if (desenhar_transicao) {
		transicao_alpha += velocidade_transicao
    
		// Quando a tela ficar 100% preta, mudamos de sala
		if (transicao_alpha >= 1) {
			global.pontos = 0 
			global.dificuldade = 0
			global.km = 0
			global.alarme = 0
			global.state = "menu"
			room_goto(rm_start)
			desenhar_transicao = false
		}
		
	}

}
	
} else {

   if (fade_alpha > 0) {
        fade_alpha -= 0.05;
        
        if (fade_alpha <= 0) {
            fade_alpha = 0;
            fade_completo = false;
			global.state = "game"
        }
    }
}

