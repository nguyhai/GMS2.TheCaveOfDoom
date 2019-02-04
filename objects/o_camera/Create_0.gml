target = o_player;
width = camera_get_view_width(view_camera[0]);
height = camera_get_view_height(view_camera[0]);

// Create scale value. Subpixels can cause jittering, so we can use this to round camera position
// to prevent camera jittering
// THIS IS NOT A PROBLEM WITH HIGHER RESOLUTION, basically unoticable. 
scale = view_wport[0] / width;

