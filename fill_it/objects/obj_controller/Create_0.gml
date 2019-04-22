//create random seed
randomize()

//create list of music tracks
scr_set_music_list()

//current song playing
music_index = -1

//text position
x = room_width - 160
y = 10

//true if in the process of restarting the room
restarting = false

//current level
level = 0

//how many done blocks have been placed
done_count = 0

//total spots on map (not including the boundry spots)
total_spots = 0

//score (percentage of map filled with done blocks)
score_percent = 0

//Percentage of map filled to beat level
winning_percent = 0

//starting x and y pos for map
grid_start_x = 0
grid_start_y = 0

//save original sprite yoffset for spr_enemy_destroy_rotate
//globalvar obj_enemy_destroy_rotate_sprite_yoffset;
//global.obj_enemy_destroy_rotate_sprite_yoffset = spr_enemy_destroy_rotate.y_offset

//Create square map
//scr_create_map_type_1()
	
//spawn enemies
/*scr_create_obj_enemy(150, grid_start_y + 150)
scr_create_obj_enemy(room_width-170, grid_start_y + 150)
scr_create_obj_enemy(150, room_height - 170)
scr_create_obj_enemy(room_width-170, room_height - 170)*/
//scr_create_obj_enemy_bounce(150, grid_start_y + 150)
//scr_create_obj_enemy_bounce(300, 600)
	
//Percentage of map filled to beat level
//winning_percent = 75

//create rm_level_1 controller
//instance_create_depth(0,0,0,obj_controller_level_1)

//create the player object
//instance_create_depth(grid_start_x,grid_start_y,-1,obj_player);

//create enemies
//instance_create_depth(400,400,0,obj_enemy)
//instance_create_depth(300,300,0,obj_enemy_destroy)
//instance_create_depth(sp,grid_start_y+sp,0,obj_enemy_perimeter)

//e = instance_create_depth(400,400,0,obj_enemy_destroy_rotate)
//sprite_set_offset(spr_enemy_destroy_rotate,0,200)
//e.offset = 200

//instance_create_depth(400,600,0,obj_enemy_grow)
//sprite_set_offset(spr_enemy_row,0,100)
//spr_enemy_rotate.image_yscale = spr_enemy_rotate.image_yscale * 12

//create score object
//instance_create_depth(room_width - 160, 10, 0, obj_score)