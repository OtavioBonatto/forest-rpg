/// @description Found Item State
if alarm[2] <= 0 or o_input.action_one_pressed or o_input.action_two_pressed {
	state = starting_state;
	found_item_sprite = noone;
	invencible = false;
}