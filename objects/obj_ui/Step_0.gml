if global.state == "game" {
	global.km += 0.5
	global.record = global.km
}

if global.km >= km * 500{
	km += 0.5
	global.dificuldade += 0.5
	global.time += 0.5
	global.alarme += 1
}else {
	
}