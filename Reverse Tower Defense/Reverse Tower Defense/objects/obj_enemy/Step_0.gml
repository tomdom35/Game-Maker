if(x+sp >= new_x){
	x = new_x
}
if(y+sp >= new_y){
	y = new_y
}
if(x == new_x and y == new_y){
	speed = 0
	if(position_meeting(x+obj_controller.grid_cell_size,y,obj_path)){
		path = instance_position(x+obj_controller.grid_cell_size,y,obj_path)
		if(path.image_angle == 90 or path.image_angle = 270){
			new_x = x+obj_controller.grid_cell_size
			new_y = y
		}
	}
	move_towards_point(new_x, new_y, sp);
}