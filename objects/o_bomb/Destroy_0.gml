create_animation_effects(s_explosion_effect, x, y, 1, true);
create_hitbox(s_bomb_hitbox, x, y - 4, 0, 3, [o_grass, o_enemy_parent, o_player], 2, 12);
audio_play_sound(snd_explosion, 7, false);