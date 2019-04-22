//destroy any colliding blocks that are not boundry blocks

//blocks current colliding with
blocks = ds_list_create()

//blocks about to collied with
//blocks2 = ds_list_create()


//instance_place_list(x,y,obj_block,blocks,false)
instance_place_list(x+hspeed,y+vspeed,obj_block,blocks,false)
//instance_place_list(x+hspeed,y+vspeed,obj_block,blocks2,false)

//scr_add_lists(blocks2,blocks)
for(i = 0; i < ds_list_size(blocks); i++){
	b = blocks[| i]
	if(instance_exists(b) && !b.bound_block && !b.touching_perimeter_enemy){
		if(b.done){
			instance_destroy(b)	
		}
		else{
			scr_restart_level()
		}
	}
}