//Create square map
scr_create_map_type_1()
	
//spawn enemies
scr_create_obj_enemy_bounce(room_width/2, grid_start_y + 100,10,random_range(0,360))
scr_create_obj_enemy_bounce(room_width/2, grid_start_y + 200,10,random_range(0,360))
scr_create_obj_enemy_bounce(room_width/2, grid_start_y + 300,10,random_range(0,360))
scr_create_obj_enemy_bounce(room_width/2, grid_start_y + 400,10,random_range(0,360))
	
//Percentage of map filled to beat level
winning_percent = 75