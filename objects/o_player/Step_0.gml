depth = -y;
event_user(state);
sprite_index = sprite_[state, facing_direction];

if global.player_health <= 0 {
	instance_destroy();	
}

if alarm[2] <= 0 {
	found_item_sprite = noone;	
}