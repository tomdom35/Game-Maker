//copy of the room grid for adding and deleting from
copy_grid = ds_grid_create(ds_grid_width(obj_controller.room_grid), ds_grid_height(obj_controller.room_grid))
ds_grid_copy(copy_grid, obj_controller.room_grid)

//list of positions to place a block after finding the closed off sections not containing enemys
spots_to_fill = ds_list_create()


for(i = 0; i < ds_grid_width(copy_grid); i++){
	for(j = 0; j < ds_grid_height(copy_grid); j++){
		if(ds_grid_get(copy_grid, i, j) != 1){
			empty_group = ds_list_create()
			contains_enemy = false
			scr_add_empty_spots(i,j)
			if(!contains_enemy){
				scr_add_lists(empty_group,spots_to_fill)
			}
		}
	}
}

scr_fill_in_empty_spots()