/// @description Get Input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

action_one_pressed = keyboard_check_pressed(ord("X"));
action_two_pressed = keyboard_check_pressed(ord("Z"));

paused_pressed = keyboard_check_pressed(vk_enter);