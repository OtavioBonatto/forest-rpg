z += z_speed;
z_speed += gravity_spd;

if z >= 0 {
	can_pickup = true;
	var _bounce_amount = .25;
	z_speed = -z_speed * _bounce_amount;
	
	if z_speed > -1 {
		z_speed = 0;
		z = 0;
	}
}