draw_set_font(ft_pixel)

draw_set_valign(fa_top)

var _largura_gui = display_get_gui_width()
var _topo_y = 20

draw_set_halign(fa_left)
draw_text(20, _topo_y, "Pontos: " + string(global.pontos))

var _km_formatado = string_format(global.km, 7, 0)


_km_formatado = string_replace_all(_km_formatado, " ", "0")

draw_set_halign(fa_right)
draw_text(_largura_gui - 20, _topo_y, _km_formatado + "M");

draw_set_halign(fa_left);
draw_set_valign(fa_top);