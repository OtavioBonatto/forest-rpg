///@arg sprite
///@arg x_position
///@arg y_position
///@arg image_speed
///@arg has_depth 

var _sprite = argument0;
var _x_position = argument1;
var _y_position = argument2;
var _image_speed = argument3;
var _has_depth = argument4;

var _effect = instance_create_layer(_x_position, _y_position, "Effects", o_animation_effect);
_effect.sprite_index = _sprite;
_effect.image_speed = _image_speed;

if _has_depth {
	_effect.depth = -_y_position;	
}

return _effect;