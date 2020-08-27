if(keyboard_check_pressed(vk_space)){
	add_mode = !add_mode
	if(add_mode){
		instance_create_depth(mouse_x,mouse_y,global_depth,obj_path)	
	}
}

if keyboard_check_pressed(vk_f12){
	window_set_fullscreen(!window_get_fullscreen());
}

if(keyboard_check_pressed(vk_tab)){
	instance_create_depth(-32,32,0,obj_enemy)	
}