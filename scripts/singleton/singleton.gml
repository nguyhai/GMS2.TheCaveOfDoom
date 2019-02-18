///@arg object
var object = argument0;

if (instance_exists(object)) {
    return object.id;
} else{
	var instance = instance_create_layer(0,0,"Instances", object);
	instance.persistent = true;
	return instance;
}