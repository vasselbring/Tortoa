// Get inputs
key_right = keyboard_check(vk_right) || (gamepad_axis_value(0, gp_axislh) > 0);
key_left = -(keyboard_check(vk_left) || (gamepad_axis_value(0, gp_axislh) < 0));
key_jump = keyboard_check(vk_space) || (gamepad_button_check(0,gp_face1));

