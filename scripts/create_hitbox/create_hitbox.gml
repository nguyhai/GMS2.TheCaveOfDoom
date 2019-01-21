///@arg sprite
///@arg x
///@arg y
///@arg angle
///@arg frames
///@arg target_array
///@arg damage
///@arg knockback

var sprite =	argument0;
var x_ =			argument1;
var y_ =			argument2;
var angle =		argument3;
var frames =	argument4;
var array =		argument5;
var damage =	argument6;
var knockback = argument7;

var hitbox = instance_create_layer(x_,y_,"Instances", o_hitbox); // Returns the ID of this instance, and it gets stored into hitbox variable
hitbox.sprite_index = sprite;
hitbox.image_angle = angle;
hitbox.alarm[0] = frames;
hitbox.targets = array;
hitbox.damage = damage;
hitbox.knockback = knockback;

return hitbox;

