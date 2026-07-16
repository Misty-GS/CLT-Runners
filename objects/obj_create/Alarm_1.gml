randomise()

if global.state == "game" {
	if spawn{
		if instancia <= 2 {
			var _id_instancia = instance_create_layer(choose(25, 151), -49, "coletaveis", obj_coletavel)
			_id_instancia.sprite_index = choose(spr_batata, spr_coxinha, spr_chocolate, spr_hamburguer)
			spawn = false
			instancia++
		}else {
			instancia = 0
		}
	}

	var _tempo_base = choose(150, 200, 250);

	var _tempo_final = _tempo_base - (global.alarme * 10);

	alarm[1] = clamp(_tempo_final, 30, 200);
}