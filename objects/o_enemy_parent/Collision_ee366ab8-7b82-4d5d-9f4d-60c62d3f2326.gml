if hp <= 0 exit;
if hurtbox_enetity_can_be_hited(other) {
	invencible = true;
	alarm[0] = global.one_second * .5;
	hp -= other.damage;
	state = enemy.hit;
	var _knockback_direction = point_direction(other.x, other.y, x, y);
	create_animation_effects(s_hit_effect, x, y-8, 1, true);

	set_movement(_knockback_direction, other.knockback);
	audio_play_sound(snd_hit, 7, false);
}