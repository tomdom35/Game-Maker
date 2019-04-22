//Create square map
scr_create_map_type_1()
	
//spawn enemies
scr_create_obj_enemy(room_width/2, grid_start_y + 300)
scr_create_obj_enemy_destroy_bounce(400, 500, 5,random_range(0,360))
	
//Percentage of map filled to beat level
winning_percent = 75