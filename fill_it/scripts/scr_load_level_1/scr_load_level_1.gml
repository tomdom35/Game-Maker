//Create square map
scr_create_map_type_1()
	
//spawn enemies
scr_create_obj_enemy(150, grid_start_y + 150)
//scr_create_obj_enemy(room_width-170, grid_start_y + 150)
//scr_create_obj_enemy(150, room_height - 170)
scr_create_obj_enemy(room_width-170, room_height - 170)
	
//Percentage of map filled to beat level
winning_percent = 75