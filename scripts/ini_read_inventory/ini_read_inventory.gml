///@arg section
///@arg name
///@arg default
var section = argument0;
var name = argument1;
var _default = argument2;

var array = [];
var i = 0;

while (ini_key_exists(section, name+string(i))) {
	var value = ini_read_string(section, name+string(i), "-4");
	var object = asset_get_index(value);
	
	if (object == -1) {
	    object = noone;
	} else {
		object = singleton(object);
	}
	
	array[i] = object;
	i++;
}

if (array_length_1d(array) > 0) {
    return array;
} else {
	return _default;
}