//places a block on all the positions located in the spots_to_fill list
//spots_to_fill = list of x and y positions

for(i = 0; i < ds_list_size(spots_to_fill); i++){
	p = spots_to_fill[| i]
	x_val = p[0]
	y_val = p[1]
	instance_create_depth(x_val, y_val, 0, obj_block)
}