///@arg item_sprite

var _item_sprite = argument0;

if !instance_exists(o_player) exit;

o_player.state = player.found_item;
o_player.found_item_sprite = _item_sprite;
o_player.invencible = true;
o_player.alarm[2] = global.one_second;	
audio_play_sound(snd_key_item, 6, false);