//Muda o estado do game para game over e ativa o timer de reset
global.state = "game_over"
if global.record_salvo < global.record {
	global.record_salvo = global.km
}
instance_destroy(other)