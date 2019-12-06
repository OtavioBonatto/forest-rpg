initialize_movement_entity(1, .5, o_solid);
initialize_hurtbox_entity();

image_speed = 0;

max_hp = 2;
hp = max_hp;

starting_state = noone;
state = starting_state;

enum enemy {
	hit	
}