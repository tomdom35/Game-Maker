//set the position of the enemy in the room grid
scr_set_enemy_room_grid_position(0,0)

//get objects colliding with enemy
scr_set_enemy_colliding_objects()

//collision with player
scr_enemy_player_collision()

//destroy any colliding blocks that are not boundry blocks
scr_enemy_destroy_colliding_blocks()

//collision with block
scr_enemy_block_collision((instance_exists(h_block) && h_block.bound_block), (instance_exists(v_block) && v_block.bound_block))

//collision with enemy
scr_enemy_enemy_collision()