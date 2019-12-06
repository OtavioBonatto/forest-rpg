event_inherited();

enum hornet {
	hit,
	move,
	attack
}

starting_state = hornet.move;
state = starting_state;

alarm[1] = global.one_second * random_range(0, 1);
alarm[2] = global.one_second * random_range(1, 2);

image_index = 0;
image_speed = 1;
image_xscale = choose(-1, 1);
range = 128;