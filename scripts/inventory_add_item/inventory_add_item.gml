///@arg item
var item = singleton(argument0);

var item_index = array_find_index(item, global.inventory);

if (item_index = -1) {

	var array_size = array_length_1d(global.inventory);
	
	for (var i = 0; i < array_size; i++) {
	    if (global.inventory[i] == noone) {
		    global.inventory[i] = item;
			return true;
		}
	} 

} else {
	return true;
}

return false;