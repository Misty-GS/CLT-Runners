var _x = display_get_gui_width()
var _y = display_get_gui_height()
X = _x / 2
Y = _y / 2
R = keyboard_check(ord("R"))
esc = keyboard_check(vk_escape)

if global.state == "game_over" {

    draw_set_colour(c_black)
    draw_set_alpha(0.7 * fade_alpha)
    draw_rectangle(0, 0, _x, _y, false)

    draw_set_valign(fa_center)
    draw_set_halign(fa_middle)

    draw_set_alpha(fade_alpha) 

    draw_set_font(ft_game_over)
    draw_set_colour(c_red)
    draw_text(X, Y - 130, "Game Over");
    draw_set_font(ft_game_over_text)
    draw_set_colour(c_white)
    draw_text(X, Y - 80, "Vai trabalhar vagabundo!")

    draw_text(X, Y, "Pressione 'R' para tentar novamente")
    draw_rectangle(20, Y - 30, X + 160, Y + 30, true)
    draw_rectangle(20, Y + 100, X + 160, Y + 60, true)
    draw_text(X, Y + 80, "Pressione 'ESC' para voltar ao menu")

    draw_set_alpha(1.0)
    draw_set_colour(c_white)
    
    // Verificar se o player quer resetar o game ou sair dele
    if R {
        alarm[0] = 30
    } else if esc {
        desenhar_transicao = true;
    }
}