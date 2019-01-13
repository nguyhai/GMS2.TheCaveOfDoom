///@arg direction
var dir = argument0

directionFacing = round(dir/90); // Enum values are 0,1,2,3, so we can use the angles. 
if (directionFacing == 4) {
    directionFacing = 0;
}