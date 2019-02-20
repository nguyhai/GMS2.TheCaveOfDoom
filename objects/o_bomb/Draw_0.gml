// Draw bomb blinking
draw_sprite(s_medium_shadow, 0, x, y);
draw_self();
var interval = ceil(alarm[0] / global.one_second) * 8;
draw_self_flash(c_red, interval, alarm[0]);
