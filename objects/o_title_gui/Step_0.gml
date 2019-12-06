var _index = index;

if o_input.up_pressed {
	index = max(--index, 0);	
}

if o_input.down_pressed {
	index = min(++index, options_length - 1);	
}

if _index != index audio_play_sound(snd_menu_move, 1, false);

if o_input.action_one_pressed {
	 switch(index) {
		case options.continue_game:
			audio_play_sound(snd_menu_select, 3, false);
			ini_load("save_data.ini");
		break;
		
		case options.new_game:
			audio_play_sound(snd_menu_select, 3, false);
			room_goto(rm_world);
		break;
		
		case options.credits:
			audio_play_sound(snd_menu_select, 3, false);
			show_debug_message("creditos");
		break;
		
		case options.quit:
			audio_play_sound(snd_menu_select, 3, false);
			game_end();
		break;
	 }
}