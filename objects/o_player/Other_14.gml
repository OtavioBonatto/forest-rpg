/// @description Bow State
speed_ = 0;
var _bow_speed = 0.5;
image_speed = _bow_speed;

if animation_hit_frame(3) {
	image_speed = 0; 
	var _released = false;
	
	if action_used == action.one {	
		_released = !o_input.action_one;
	} else {
		_released = !o_input.action_two;
	}	
	
	if _released {
		image_speed = _bow_speed;
		audio_play_sound(snd_swipe, 2, false);
		
		//create the arrow	
		var _arrow = instance_create_layer(x, y, "Instances", o_arrow);
		_arrow.direction = facing_direction * 90;
		_arrow.image_angle = facing_direction * 90;
		_arrow.speed = 4;
	
		switch(facing_direction) {
			case dir.right:
				_arrow.y -= 4;
			break;
		
			case dir.left:
				_arrow.y -= 4;
			break;
		
			case dir.up:
				_arrow.y -= 2;
			break;
		}		
	}
	

}

if animation_hit_frame(image_number - 1) {
	state = player.move;
	image_index = 0;
}