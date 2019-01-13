// Local variables start with var
var animationSpeed = 0.6;
var xInput = keyboard_check(vk_right) - keyboard_check(vk_left); 
var yInput = keyboard_check(vk_down) - keyboard_check(vk_up); 
var inputDirection = point_direction(0,0,xInput, yInput);
directionFacing = round(inputDirection/90); // Enum values are 0,1,2,3, so we can use the angles. 

if (directionFacing == 4) {
    directionFacing = 0;
}

// Movement and collision
// When not moving, stop image speed. 
image_speed = 0;

// If pressing right on keyboard and there is not a solid object 4 pixels to the right, move right 4 pixels. 
if xInput != 0 && !place_meeting(x + movementSpeed * xInput, y, o_solid){
	x += movementSpeed * xInput;
	image_speed = animationSpeed;
	image_xscale = xInput;
}
	
//if (keyboard_check(vk_left)) && !place_meeting(x - movementSpeed, y, o_solid){
//	directionFacing = dir.left;
//	x -= movementSpeed;
//	image_speed = animationSpeed;
//	image_xscale = -1;
//}
	
//if (keyboard_check(vk_up)) && !place_meeting(x, y - movementSpeed, o_solid){
//	directionFacing = dir.up;
//	y -= movementSpeed;
//	image_speed = animationSpeed;
//}
	
if (yInput != 0) && !place_meeting(x, y + movementSpeed * yInput, o_solid){
	y += movementSpeed * yInput;
	image_speed = animationSpeed;
}

// Set sprite index
sprite_index = sprite_[player.move, directionFacing];