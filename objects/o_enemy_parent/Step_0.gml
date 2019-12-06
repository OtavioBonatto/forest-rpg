depth = -y;

if hp <= 0 and state != enemy.hit {
	instance_destroy();
}

if state != noone {
	event_user(state);
}	