///@arg instance_id
var id_ = argument0;

// If the value is not negative 1, it does exist in our destroyed list. 
return array_find_index(id_, global.destroyed) != -1;