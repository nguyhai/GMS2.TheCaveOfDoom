///@arg sprite
///@arg x
///@arg y
///@arg image_speed
///@arg has_depth

var sprite =     argument0;
var xPosition =  argument1;
var yPosition =  argument2;
var imageSpeed = argument3;
var hasDepth =   argument4;


var effect = instance_create_layer(xPosition, yPosition, "Effects", o_animation_effect);

effect.sprite_index = sprite;
effect.image_speed = imageSpeed;

if (hasDepth) {
    effect.depth = -yPosition;
}

return effect;
