/// @description Move State
image_speed = 0;
var _x_input = o_input.right - o_input.left;
var _y_input = o_input.down - o_input.up;
var _input_direction = point_direction(0, 0, _x_input, _y_input);
var _attack_input = o_input.action_one_pressed;
var _roll_input = o_input.action_two_pressed;
roll_direction = facing_direction * 90;

if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = .6;
	if _x_input != 0 image_xscale = _x_input;
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration, max_speed);
	roll_direction = facing_direction * 90;
}

use_inventory_item(o_input.action_one_pressed, global.item[0], action.one);
use_inventory_item(o_input.action_two_pressed, global.item[1], action.two);

move_movement_entity(false);