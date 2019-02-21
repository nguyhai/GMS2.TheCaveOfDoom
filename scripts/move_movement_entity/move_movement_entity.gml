///@param _bounce
// Once we initialize the variables, this is where the movement happens.


var _bounce = argument0;

// Apply friction when sliding on walls. Only if bounce is false. 
if place_meeting( // check for a wall first with place_meeting
	x+lengthdir_x(speed_, direction_), // Checks to see if there is a wall in the direction that we are moving
	y+lengthdir_y(speed_, direction_),
	collision_object_) 
	and !_bounce {
	speed_ = approach(speed_, 0, friction_/2); // The approach script approaches the target amount by whatever you pass in. Take our current speed and approach zero, 
}

// You have a speed and direction, and you want to Convert our speed and direction to xpeed and y speed
var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit; // No need to check for collisions

// If speed is zero exit. Otherwise, it goes to these place_meeting checks. This is the big one on how collissions work
if place_meeting(x+_x_speed, y, collision_object_) {// Checks to see if there is a wall
	while !place_meeting(x+sign(_x_speed), y, collision_object_) { // If there IS a wall, move against that wall, uses while loop so that it moves 1 pixel at a time
		x += sign(_x_speed);
	}
	
	// If bounce is equal to true
	if _bounce {
		// Then it is going to take our current xspeed, times it by the negative bounce amount, this way it goes the other way. If no bounce, then xspeed = 0
		_x_speed = -(_x_speed)*bounce_amount_;
	} else {
		_x_speed = 0;
	}
	
}

x += _x_speed;

if place_meeting(x, y+_y_speed, collision_object_) {
	while !place_meeting(x, y+sign(_y_speed), collision_object_) {
		y += sign(_y_speed);
	}
	
	if _bounce {
		_y_speed = -(_y_speed)*bounce_amount_;
	} else {
		_y_speed = 0;
	}
}
y += _y_speed;

// Make sure to update speed and direction (convert to xspeed and yspeed for collision, then convert back for movement). WTF?
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);