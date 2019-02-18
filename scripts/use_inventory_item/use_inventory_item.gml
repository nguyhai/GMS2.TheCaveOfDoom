///@arg input
///@arg action

var input = argument0;
var item_ = argument1;

if (input) {
    if (instance_exists(item_)) {
	    state = item_.action;
		image_index = 0;
	}
}