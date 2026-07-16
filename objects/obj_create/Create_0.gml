randomise()
vspeed = 1
velocidade_salva = vspeed

spawn = true
instancia = choose("clt","coletavel")
time = 0

desenhar_transicao = true  
transicao_alpha = 1       
velocidade_transicao = -0.03

alarm[0] = choose(100, 200, 300)
alarm[1] = choose(150, 250, 350)

//musica
audio_play_sound(snd_game, 0.3, true)
