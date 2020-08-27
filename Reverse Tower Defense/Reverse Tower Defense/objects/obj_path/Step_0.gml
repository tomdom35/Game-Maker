if(keyboard_check_pressed(vk_space)){
	if(!placed){
		instance_destroy()	
	}
}

if(!placed){
	x = (floor(mouse_x/64) * 64) + 32
	y = (floor(mouse_y/64) * 64) + 32
}

if(mouse_check_button_pressed(mb_right) and !placed){
	image_angle += 90
	/*if(sprite_index == spr_path_cobblestone_straight){
		if(image_angle == 0){
			image_angle = 90	
		}
		else if(image_angle = 90){
			sprite_index = spr_path_cobblestone_corner
			image_angle = 0
		}
	}
	else if(sprite_index == spr_path_cobblestone_corner){
		if(image_angle <= 270){
			image_angle += 90	
		}
		else{
			sprite_index = spr_path_cobblestone_straight
			image_angle = 0
		}		
	}*/
}

if(keyboard_check_pressed(vk_shift) and !placed){
	image_angle = 0
	if(sprite_index == spr_path_cobblestone_straight){
		sprite_index = spr_path_cobblestone_corner	
	}
	else if(sprite_index == spr_path_cobblestone_corner){
		sprite_index = spr_path_cobblestone_intersection	
	}	
	else if(sprite_index == spr_path_cobblestone_intersection){
		sprite_index = spr_path_cobblestone_tee	
	}
	else if(sprite_index == spr_path_cobblestone_tee){
		sprite_index = spr_path_cobblestone_straight
	}
}

if(mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self)){
	if(placed){
		instance_destroy()	
	}
	else{
		placed = true
		new_path = instance_create_depth(x,y,--obj_controller.global_depth,obj_path)
		new_path.sprite_index = sprite_index
		new_path.image_angle = image_angle
	}
}