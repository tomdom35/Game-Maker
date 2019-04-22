//Create square map
scr_create_map_type_1()
perimeter_enemy_offset = 16
	
//spawn enemies
scr_create_obj_enemy_bounce(room_width/2, grid_start_y + 300,10,random_range(0,360))
scr_create_obj_enemy_perimeter(room_width - perimeter_enemy_offset*2, grid_start_y+perimeter_enemy_offset,16)
scr_create_obj_enemy_perimeter(grid_start_x+perimeter_enemy_offset, grid_start_y+perimeter_enemy_offset,16)
scr_create_obj_enemy_perimeter(grid_start_x+perimeter_enemy_offset, room_height-perimeter_enemy_offset*2,16)
scr_create_obj_enemy_perimeter(room_width-perimeter_enemy_offset, room_height-perimeter_enemy_offset*2,16)
	
//Percentage of map filled to beat level
winning_percent = 75