/// @description Sword State
image_speed = .8;

if animation_hit_frame(1) {
	var _angle = facing_direction * 90;
	var _life = 3
	var _damage = 1
	var _knockback = 8;
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy_parent, o_grass, o_bush], _damage, _knockback);
	audio_play_sound(snd_swipe, 8, false);
	
	switch facing_direction {
		case dir.up:
			_hitbox.y -= 4;
		break;
		default:
			_hitbox.y -= 8;
		break;
	}	
}

if animation_hit_frame(image_number - 1)  {
	state = player.move;
}