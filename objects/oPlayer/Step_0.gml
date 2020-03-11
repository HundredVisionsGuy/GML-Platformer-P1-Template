/// @description platformer mechanics

// Get inputs (1 = pressed & 0 = not pressed)
key_right = keyboard_check(vk_right);  // for D, use ord('D')
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_space);

// work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

x = x + hsp;
/*
If right arrow is pressed: 
hsp = (1 - 0) * 4 = 1 * 4 = 4

If left arrow is pressed:
hsp = (0 - 1) * 4 = -1 * 4 = -4

If both arrows are pressed:
hsp = (1 - 1) * 4 = 0 * 4 = 0

If neither are pressed:
hsp = (0 - 0) * 4 = 0 * 4 = 0

*/