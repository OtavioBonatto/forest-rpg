if hurtbox_enetity_can_be_hited(other) {
	add_to_destroyed_list(id);
	instance_destroy();
	instance_destroy(wall);
	create_animation_effects(s_bush_effect, x, y, 1, true);
}