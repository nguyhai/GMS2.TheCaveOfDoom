// Add code when you touch the door to object to move to the corresponding room
global.player_start_position = other.start_;
room_goto(other.room_);
persistent = true;
