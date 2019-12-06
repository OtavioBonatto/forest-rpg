/// @description Evade State
image_speed = .7;

if animation_hit_frame(0) audio_play_sound(snd_evade, 5, false);

set_movement(roll_direction, roll_speed);
move_movement_entity(false);

if animation_hit_frame(image_number - 1)  {
	state = player.move;
}