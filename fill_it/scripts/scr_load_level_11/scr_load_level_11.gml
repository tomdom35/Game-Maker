//Create square map
scr_create_map_type_1()

radius = 200
y_spawn = room_height/2 + grid_start_y/2
x_spwan = room_width/2

//spawn enemies
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, 7, radius, 1)
//Percentage of map filled to beat level
winning_percent = 50