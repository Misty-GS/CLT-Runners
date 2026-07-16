X = display_get_gui_width()/2
Y = 30
tela_x = display_get_gui_width()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//fundo do titulo
draw_set_color(#828CC6)
draw_set_alpha(0.8)
draw_rectangle(0, Y + 50, tela_x, Y + 250, false)

//config do titulo
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(ft_game_over)
draw_text(X, Y + 100, "CLT")
draw_text(X, Y + 200, "Runners")

draw_set_color(c_white)


