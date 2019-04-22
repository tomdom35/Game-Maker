//speed of the player (pixels per frame) also size of sprite (16x16)
sp = 16

//direction stuff... don't really remember how these are used anymore ¯\_(ツ)_/¯
d = 0
start_d = 0
start_d_x = 0
start_d_y = 0
check_d = 0
old_start_d = 0

//if a block was just deleted
just_deleted = false

//creating a new line of blocks I think...?
new = false
new2 = false

//if you made a turn while placing blocks
turn = false

//position player was just at
old_y = 0
old_x = 0

//x and y positions of the starting point for the map
grid_start_x = obj_controller.grid_start_x
grid_start_y = obj_controller.grid_start_y