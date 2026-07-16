if global.state == "game" {
	if spawn{
		instance_create_layer(choose(28, 151), -49, "obstaculo", obj_clt)
		spawn = false
	}

	var _tempo_base = choose(100, 150, 200);

	var _tempo_final = _tempo_base - (global.alarme * 10);

	alarm[0] = clamp(_tempo_final, 30, 200);
}
