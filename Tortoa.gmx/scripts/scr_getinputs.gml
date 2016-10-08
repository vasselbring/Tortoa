// Get inputs
key_right = keyboard_check(vk_right) || gamepad_button_check(0,gp_padr);
key_left = -(keyboard_check(vk_left) || gamepad_button_check(0,gp_padl));
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);
key_jumpHeld = keyboard_check(vk_space) || gamepad_button_check(0,gp_face1);

//Analog Gamepad H-Axis
gamepadH = gamepad_axis_value(0, gp_axislh);

