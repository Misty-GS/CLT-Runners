if global.state == "game_over" or global.state == "pause"{
	with (all) {
		vspeed = 0
		//parando as sprites
		image_speed = 0
	}

	//parando o cenario
	var _lay_id = layer_get_id("Background")
	layer_vspeed(_lay_id, 0)
	//Parando a musica
	audio_stop_all()
	
}else if global.state == "game" {
	if (!audio_is_playing(snd_game)) {
        audio_play_sound(snd_game, 1, true); // Toca em loop (true)
    }
	desenhar_transicao = true
	if (desenhar_transicao) {
	    transicao_alpha += velocidade_transicao
    
		if (transicao_alpha <= 0) {
			desenhar_transicao = false
	    }
	}
	
	with (all) {
		if (object_index == obj_clt || object_index == obj_coletavel) {
            vspeed = 1 + global.dificuldade; 
        }
		//parando as sprites
		image_speed = 1
	}
	
	var _lay_id = layer_get_id("Background")
	velocidade_game = 1
	
	if !spawn time+= global.time

	if time >= 100 {
		time = 0
		spawn = true
	}

	layer_vspeed(_lay_id, velocidade_game + global.dificuldade);
}

