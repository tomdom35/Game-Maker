//direction of player
d = instance_exists(obj_player) ? obj_player.d : 0

//if block is a 'pre' block 
//pre blocks are blocks created in the current line of created blocks (removeable, vulnerable to enemies)
pre = instance_exists(obj_player) ? obj_player.new : false;

//if block is a 'post' block
//post blocks are blocks created in the previous line of created blocks before turning (non removeable, vulnerable to enemies)
post = false

//if block is a 'done' block
//done blocks are blocks that have been fully created and set (non removeable, not vaulnerable to enemies)
done = !pre && !post

//dunno
set = false
first_done = true;

//block around the boundry of the map
bound_block = false;

//x and y positions of the starting point for the map
grid_start_x = obj_controller.grid_start_x
grid_start_y = obj_controller.grid_start_y

//set room grid position for block
scr_set_grid_position_values()

//set position on room grid to 1 to represent a block at that position
ds_grid_set(obj_controller.room_grid,grid_val_x,grid_val_y,1)

//if block is a done block add it to the done block count
if(done){
	obj_controller.done_count++
	first_done = false
}

//true if the block is next to an obj_enemy_perimeter
touching_perimeter_enemy = false