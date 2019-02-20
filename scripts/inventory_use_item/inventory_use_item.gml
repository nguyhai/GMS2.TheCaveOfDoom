///@arg input
///@arg action

var input = argument0;
var item_ = argument1;

if (input) {
    if (instance_exists(item_)) and global.playerStamina >= item_.cost {
	    state = item_.action;
		global.playerStamina -= item_.cost;
		global.playerStamina = max(0, global.playerStamina);
		alarm[1] = global.one_second;
		image_index = 0;
	}
}