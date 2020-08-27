depth = -10000
new_x = x
new_y = y
sp = 2
direction = 123
show_debug_message(direction)
if(x < 0 and position_meeting(x+obj_controller.grid_cell_size,y,obj_path)){
	path = instance_position(x+obj_controller.grid_cell_size,y,obj_path)
	if(path.image_angle == 0 or path.image_angle = 180){
		new_x = x+obj_controller.grid_cell_size
		new_y = y
	}
}

move_towards_point(new_x, new_y, sp);