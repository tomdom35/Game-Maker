//change block state and sprite

if(instance_exists(obj_player)){
	pre = (d == obj_player.d || d % 2 == obj_player.d % 2) && pre && obj_player.new
	d = obj_player.d
	post = !pre && !done && obj_player.new
	done = !pre && !post
	if(pre){
		sprite_index = spr_block_pre
	}
	else if(post){
		sprite_index = spr_block_post
	}
	else if(done){
		sprite_index = spr_block
		if(first_done){
			obj_controller.done_count++	
			first_done = false
		}
	}
	if(pre && instance_position(x,y,obj_player)){
		instance_destroy()
	}
}