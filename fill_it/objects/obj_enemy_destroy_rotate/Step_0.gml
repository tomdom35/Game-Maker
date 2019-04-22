//rotate object in a circle with size radius
dir += rotation_speed * clockwise
dir = dir mod 360

x = y_start + floor(lengthdir_x(radius,dir))
y = x_start + floor(lengthdir_y(radius,dir))

//set the position of the enemy in the room grid
scr_set_enemy_room_grid_position(0,0)

//get objects colliding with enemy
scr_set_enemy_colliding_objects()

//collision with player
scr_enemy_player_collision()

//destroy any colliding blocks that are not boundry blocks
scr_enemy_destroy_colliding_blocks()