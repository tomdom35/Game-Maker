//Create square map
scr_create_map_type_1()

y_spawn = room_height/2 + grid_start_y/2
x_spwan = room_width/2
spd = 5

//spawn enemies
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 350, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 300, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 250, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 200, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 150, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 100, 1)
scr_create_obj_enemy_destroy_rotate(x_spwan, y_spawn, spd, 50, 1)

//Percentage of map filled to beat level
winning_percent = 50