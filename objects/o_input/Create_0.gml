GET_INPUT = 0;
event_user(GET_INPUT);

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

keyboard_set_map(vk_escape, vk_enter);