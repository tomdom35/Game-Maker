//Create square map
scr_create_map_type_1()
	
//spawn enemies
scr_create_obj_enemy_grow(room_width/2, (room_height/2) + (grid_start_y/2), true, 2, 32, false, 0, true)

//Percentage of map filled to beat level
winning_percent = 75