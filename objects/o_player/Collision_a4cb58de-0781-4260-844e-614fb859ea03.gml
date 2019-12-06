/// @description Hit logic
if hurtbox_enetity_can_be_hited(other) {
	invencible = true;
	alarm[0] = global.one_second * .75;
	global.player_health -= other.damage;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback);
	state = player.hit;
	audio_play_sound(snd_hurt, 6, false);
	if other.destroy_on_contact instance_destroy(other);
} 