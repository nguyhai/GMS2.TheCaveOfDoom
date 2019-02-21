///@arg current
///@arg target
///@arg amount


// This just approaches a value

var _current = argument0; // Lets say our current value is 5
var _target = argument1; // target is 0
var _amount = argument2; // amount we want to approach is 1

if (_current < _target) { // If our current value is less than the target value
    return min(_current+_amount, _target); // Adds one until it hits target
} else {
    return max(_current-_amount, _target); // Subtracts one until it hits target
}