//set the position of the enemy in the room grid
scr_set_enemy_room_grid_position(0,0)

if(rot){
	image_angle += rot_speed
}

if(grow_horz){
	if(image_xscale >= max_size){
		decrease = true	
		increase = false
	}
	else if(image_xscale <= 1){
		increase = true
		decrease = false
		if(alternate){
			grow_vert = !grow_vert
			grow_horz = !grow_horz
		}
	}
}
else if(grow_vert){
	if(image_yscale >= max_size){
		decrease = true	
		increase = false
	}
	else if(image_yscale <= 1){
		increase = true
		decrease = false
		if(alternate){
			grow_vert = !grow_vert
			grow_horz = !grow_horz
		}
	}
}

if(increase){
	if(grow_horz){
		image_xscale += increment
	}
	if(grow_vert){
		image_yscale += increment
	}
}
else if(decrease){
	if(grow_horz){
		image_xscale -= increment
	}
	if(grow_vert){
		image_yscale -= increment
	}
}