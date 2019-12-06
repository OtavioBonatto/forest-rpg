if hurtbox_enetity_can_be_hited(other) {
	instance_destroy();
	create_animation_effects(s_grass_effect, x, y, random_range(.4, .6), true);
}