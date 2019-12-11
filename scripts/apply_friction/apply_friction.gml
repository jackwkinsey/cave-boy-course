/// @description Apply Friction by given amount
/// @param amount

var amount = argument0;

if (xspeed != 0) {
	if (abs(xspeed) - amount > 0) {
		// we multiply amount by image_xscale since it will
		// be negative when moving left and positive when
		// moving right. This saves us from doing multiple checks.
		xspeed -= amount * image_xscale;
	} else {
		xspeed = 0;
	}
}