//set the position of the enemy in the room grid
scr_set_enemy_room_grid_position(0,0)

//get objects colliding with enemy
scr_set_enemy_colliding_objects()

//collision with player
scr_enemy_player_collision()

//collision with block
scr_enemy_block_collision((h_block && h_block.done), (v_block && v_block.done))

//collision with enemy
scr_enemy_enemy_collision()