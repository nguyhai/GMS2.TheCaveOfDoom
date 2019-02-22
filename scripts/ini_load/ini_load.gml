///@arg file_name
var file_name = argument0;
global.load = true;

// Open the INI file
ini_open(file_name);

// Load everything up
var room_name_ = ini_read_string("Level", "Room", ""); 
global.start_x = ini_read_real("Level", "Start x", 0);
global.start_y = ini_read_real("Level", "Start y", 0);

ini_close();

if (room_name_ == "") {
    show_error("No Save Data", false);
}
var _room = asset_get_index(room_name_);


room_goto(_room);

