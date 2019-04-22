//set position in room grid to '2' for enemy
x_offset = argument0
y_offset = argument1
//set position in room grid to empty
ds_grid_set(obj_controller.room_grid,grid_val_x,grid_val_y,0)

//x position in the room grid
grid_val_x = floor((x+x_offset)/16)

//y position in the room grid, grid_start_y is the y starting point for the map (y position after score display area)
grid_val_y = floor((y-grid_start_y+y_offset)/16)

//set position in room grid to an enemy
ds_grid_set(obj_controller.room_grid,grid_val_x,grid_val_y,2)