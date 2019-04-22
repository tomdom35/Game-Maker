h_can_bounce = argument0
v_can_bounce = argument1

//if enemy is colliding with block in horozontal direction
if(instance_exists(h_block)){
	
	//if the colliding block is in a done state change directions (bounce)
	if(h_can_bounce){
		direction = -direction + 180 + random_range(0,15);
	}
	
	//if the colliding block is not in a done state, restart the game
	else if(h_block.post || h_block.pre){
		scr_restart_level()
	}
}

//if enemy is colliding with block in vertical direction
if(instance_exists(v_block)){
	
	//if the colliding block is in a done state change directions (bounce)
	if(v_can_bounce){
		direction = -direction - random_range(0,15);
	}
	
	//if the colliding block is not in a done state, restart the game
	else if(v_block.post || v_block.pre){
		scr_restart_level()
	}
}