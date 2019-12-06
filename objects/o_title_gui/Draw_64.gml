draw_set_halign(fa_center);
for (var _i = 0; _i < options_length; _i++;) {
	if _i == index draw_set_color(menu_color) else draw_set_color(menu_dark_color);
	draw_text(x, y + _i * 12, options_[_i]);
}

draw_set_color(c_white);
draw_set_halign(fa_left);