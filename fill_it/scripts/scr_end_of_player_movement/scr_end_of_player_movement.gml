//no fucking idea what this code does anymore...

b = instance_position(x,y,obj_block)

if(!instance_position(old_x,old_y,obj_block) && start_d != check_d && !(b && b.done && start_d == old_start_d)){
	instance_create_depth(old_x,old_y,0,obj_block)
}
	
if(turn){
	old_start_d = start_d
	start_d = d
	start_d_y = old_y
	start_d_x = old_x
}

if(y == start_d_y && x = start_d_x){
	start_d = old_start_d	
}