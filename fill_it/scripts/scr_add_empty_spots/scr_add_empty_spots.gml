//flood-fill algorithm for filling in closed off sections

var _x = argument0
var _y = argument1

if(_x < ds_grid_width(copy_grid) && _y < ds_grid_height(copy_grid) && _x > 0 && _y > 0 && ds_grid_get(copy_grid,_x,_y) != 1){

	if(ds_grid_get(copy_grid,_x,_y) == 2){ //if copy_grid at x,y is 2 it means an enemy is located there
		contains_enemy = true
	}
	
	ds_list_add(empty_group, [_x*16, (_y*16) + grid_start_y])
	ds_grid_set(copy_grid,_x,_y,1)
	
	scr_add_empty_spots(_x+1,_y)
	scr_add_empty_spots(_x-1,_y)
	scr_add_empty_spots(_x,_y+1)
	scr_add_empty_spots(_x,_y-1)
}