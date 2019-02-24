///@arg section
///@arg name
///@arg inventory_array

var section = argument0;
var name = argument1;
var inventory_array = argument2;

var array_size = array_length_1d(inventory_array);

// Loop through every object in the inventory and save it to the INI file.

for (var i = 0; i < array_size; i++) {
    var value = inventory_array[i];
	
	if (instance_exists(value)) {
	    ini_write_string(section, name+string(i), object_get_name(value.object_index));
	} else {
		ini_write_string(section, name+string(i), string(value));
	}
	
}