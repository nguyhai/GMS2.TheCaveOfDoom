///@arg value
///@arg target_array

var value = argument0;
var array = argument1;
var array_length = array_length_1d(array);

for (var index = 0; index < array_length; index++) {
    if (value == array[index]) or (object_is_ancestor(value, array[index])) {
	    return true;
	}
}

return false;