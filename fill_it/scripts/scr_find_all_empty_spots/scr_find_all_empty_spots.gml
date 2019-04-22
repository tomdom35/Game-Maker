//gets list of empty spots
for(x_val = 0; x_val < room_width; x_val += sp){
	for(y_val = 0; y_val < room_height; y_val += sp){
		if(!instance_position(x_val,y_val,obj_block)){
			var pos = [];
			pos[0] = x_val
			pos[1] = y_val
			ds_list_add(empty_spots, pos)
		}
	}
}