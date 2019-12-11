/// @description Controlling the player's state

#region Setup controls for the player

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_released = keyboard_check_released(vk_up);

#endregion

#region State Machine

switch(state) {
#region Move State

	case player.moving:
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
	
		if (right || left) {
			xspeed += (right - left) * acceleration;
			xspeed = clamp(xspeed, -max_speed, max_speed);
		} else {
			apply_friction(acceleration);
		}
		
		move(obj_solid);
		
		break;

#endregion
#region Ledge Grabby State

	case player.ledge_grab:
		break;

#endregion
#region Door State

	case player.door:
		break;

#endregion
#region Hurty McHurt state

	case player.hurt:
		break;

#endregion
#region Dead as a door nail state

	case player.death:
		break;

#endregion
}



#endregion
