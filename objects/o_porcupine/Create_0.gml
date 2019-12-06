event_inherited();
initialize_movement_entity(.5, .5, o_solid);

enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}	

starting_state = porcupine.idle;
state = starting_state;

image_index = 0;
image_xscale = choose(1, -1);

alarm[1] = random_range(0, 1) * global.one_second;