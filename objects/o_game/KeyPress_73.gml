// Save by passing in file name
if instance_exists(o_player) {
	ini_save("save_data.ini");
	show_debug_message("Saved!");
}