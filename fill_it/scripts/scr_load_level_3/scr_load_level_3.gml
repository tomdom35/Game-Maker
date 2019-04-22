//Create square map
scr_create_map_type_1()
	
//spawn enemies
scr_create_obj_enemy_bounce(150, grid_start_y + 150, 10, random_range(0,360))
scr_create_obj_enemy_bounce(300, 600, 10,random_range(0,360))
scr_create_obj_enemy_bounce(400, 500, 10,random_range(0,360))
	
//Percentage of map filled to beat level
winning_percent = 50