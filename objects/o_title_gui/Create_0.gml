enum options {
	continue_game,
	new_game,
	credits,
	quit
}

menu_color = make_color_rgb(247, 243, 143);
menu_dark_color = make_color_rgb(126, 127, 81);

options_[options.continue_game] = "Continuar";
options_[options.new_game] = "Novo Jogo";
options_[options.credits] = "Créditos";
options_[options.quit] = "Sair";

options_length = array_length_1d(options_);

index = options.continue_game;