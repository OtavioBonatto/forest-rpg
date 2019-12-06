instance_destroy();
if global.player_health < global.player_max_health global.player_health++;
audio_play_sound(snd_collect_item, 2, false);