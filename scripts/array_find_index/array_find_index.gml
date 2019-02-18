///@arg value
///@arg array

// Finds the item and tells us where it is?

var value = argument0;
var array = argument1;
var array_size = array_length_1d(array);

// Look for value
for (var i = 0; i < array_size; i++) {
	if (array[i] == value) {
	    return i;
	}
}

return -1;

