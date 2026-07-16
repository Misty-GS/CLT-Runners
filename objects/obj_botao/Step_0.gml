//verificando qual botão para colocar a sprite correta
if tipo_botao == "start"{
	sprite_index = spr_botao_start
}else{
	sprite_index = spr_botao_sair
}

//Usei pela primeira vez esse check de mouse e o position_meeting
var _mouse_em_cima = position_meeting(mouse_x, mouse_y, id)
var _clicou = mouse_check_button(mb_left)
var _soltou_clique = mouse_check_button_released(mb_left)

//Se o botão foi apertado ele vai inicar isso
if (desenhar_transicao) {
    transicao_alpha += velocidade_transicao
    
    // Quando a tela ficar 100% preta, mudamos de sala
    if (transicao_alpha >= 1) {
		global.state = "game"
        room_goto_next()
    }
}

//Verificando se o mouse está em cima
if _mouse_em_cima {
	//Verificando se o player clicou e mudando o index da sprtie
	if _clicou {
		image_index = 1
	}else {
		image_index = 2
	}
	//Verificando em qual botao ele soltou o clique
	if _soltou_clique {
		if tipo_botao == "start" {
			desenhar_transicao = true
		}else {
			game_end()
		}
	}
}else {
	//Resetando a imagem do botao
	image_index = 0
}


