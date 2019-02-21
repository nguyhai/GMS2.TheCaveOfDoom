initialize_hurtbox_entity();
depth = -bbox_bottom;
wall = instance_create_layer(x,y,"Instances",o_solid);
if (is_in_destoryed_list(id)) {
    instance_destroy();
	instance_destroy(wall);

}
