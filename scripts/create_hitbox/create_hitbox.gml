///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames
///@arg target_array
///@arg damage
///@arg knockback
var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames = argument4;
var _array = argument5;
var _damage = argument6;
var _knockback = argument7;

var _hitbox = instance_create_layer(_x, _y, "Instances", o_hitbox);
_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;
_hitbox.alarm[0] = _frames;
_hitbox.targets = _array;
_hitbox.damage = _damage;
_hitbox.knockback = _knockback;

return _hitbox;