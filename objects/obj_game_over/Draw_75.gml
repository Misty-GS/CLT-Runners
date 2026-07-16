if (desenhar_transicao) {
    var _w = display_get_gui_width();
    var _h = display_get_gui_height();
    
    draw_set_alpha(transicao_alpha);
    draw_set_color(c_black);
    
    draw_rectangle(0, 0, _w, _h, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
}