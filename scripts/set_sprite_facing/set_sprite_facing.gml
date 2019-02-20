// Make it face correct direction
var xSpeed = lengthdir_x(speed_, direction_);
if (xSpeed != 0) {
    image_xscale = sign(xSpeed);
}