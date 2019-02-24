///@arg section
///@arg name
///@arg inventory_array

var section = argument0;
var name = argument1;
var array = argument2;
var array_size = array_length_1d(array);

for (var i = 0; i < array_size; i++) {
    var _value = array[i];
	ini_write_string(section, name+string(i), _value);
}