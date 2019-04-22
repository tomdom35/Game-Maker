//creates a type_1 map layout
//type_1 = square map

//number of spots in row of map positions (spot is 16x16) there are 48x48 spots
num_spots = 48

//total spots on map (not including the boundy spots)
//obj_controller.total_spots = (num_spots - 2) * (num_spots - 2)
total_spots = (num_spots - 2) * (num_spots - 2)

//size of spot (16x16 pixels)
sp = 16

//grid to mimic the map
//obj_controller.room_grid = ds_grid_create(num_spots,num_spots)
room_grid = ds_grid_create(num_spots,num_spots)

//starting x and y positions of map (y offset becuase of score display area)
grid_start_x = 0
grid_start_y = 160
//obj_controller.grid_start_x = grid_start_x
//obj_controller.grid_start_y = grid_start_y

//set the boundry blocks
for(s = 0; s < num_spots; s++){
	y_val = (s*16) + grid_start_y
	x_val = s*16
	b_1 = instance_create_depth(grid_start_x, y_val, 0, obj_block)
	b_2 = instance_create_depth(room_width - sp, y_val, 0, obj_block)
	b_3 = instance_create_depth(x_val, grid_start_y, 0, obj_block)
	b_4 = instance_create_depth(x_val, room_height - sp, 0, obj_block)
	b_1.bound_block = true
	b_2.bound_block = true
	b_3.bound_block = true
	b_4.bound_block = true
}

//set done count to 0 (to exclude boundry blocks placed)
//obj_controller.done_count = 0
done_count = 0

//spwan player
scr_create_player(grid_start_x, grid_start_y)