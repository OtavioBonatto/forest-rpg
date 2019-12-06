///@arg input
///@arg item
///@arg action

var _input = argument0;
var _item = argument1;
var _action = argument2;

if _input {
	
	var _target_x = x + lengthdir_x(8, facing_direction * 90);
	var _target_y = y + lengthdir_y(8, facing_direction * 90);
	var _interactable = instance_place(_target_x, _target_y, o_interactable);
	
	if _interactable and o_interactable.activable {
		with _interactable {
			event_user(interactable.activate);	
		}
	}
	
	if instance_exists(_item) and global.player_stamina >= _item.cost {
		action_used = _action;
		state = _item.action; 
		global.player_stamina = max(0, global.player_stamina - _item.cost);
		alarm[1] = global.one_second;
		image_index = 0;
	}
}