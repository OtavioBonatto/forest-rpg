initialize_movement_entity(.5, 1, o_solid);
initialize_hurtbox_entity();
image_speed = 0;
acceleration = .5;
max_speed = 1.5
roll_speed = 2;
facing_direction = dir.right;
roll_direction = 0;
found_item_sprite = noone;

alarm[1] = global.one_second;

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

enum action {
	one,
	two
}

starting_state = player.move
state = starting_state;
used_action = noone;

//sprite move loopkup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

//sprite sword move loopkup table
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

//sprite evade move loopkup table
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

//sprite bomb move loopkup table
sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;

//sprite found item loopkup table
sprite_[player.found_item, dir.right] = s_player_found_item;
sprite_[player.found_item, dir.up] = s_player_found_item;
sprite_[player.found_item, dir.left] = s_player_found_item;
sprite_[player.found_item, dir.down] = s_player_found_item;

//sprite bow loopkup table
sprite_[player.bow, dir.right] = s_player_bow_right;
sprite_[player.bow, dir.up] = s_player_bow_up;
sprite_[player.bow, dir.left] = s_player_bow_right;
sprite_[player.bow, dir.down] = s_player_bow_down;

//sprite hit loopkup table
sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;