//set the surrounding blocks
scr_enemy_perimeter_enemy_destroy_collision()

//set the position of the enemy in the room grid
scr_set_enemy_room_grid_position(0,0)

//get objects colliding with enemy
scr_set_enemy_colliding_objects()

//collision with player
scr_enemy_player_collision()

//move around perimeter
if(vspeed != 0){
	if(v_block && !v_block.done){
		scr_restart_level()
	}
	if(vspeed > 0){
		if(!left_block){
			vspeed = 0
			hspeed = -s
		}
		else if(!v_block){
			//do nothing
		}
		else if(!right_block){
			vspeed = 0
			hspeed = s
		}
		else{
			vspeed = -vspeed
		}
	}
	else{
		if(!right_block){
			vspeed = 0
			hspeed = s
		}
		else if(!v_block){
			//do nothing
		}
		else if(!left_block){
			vspeed = 0
			hspeed = -s
		}
		else{
			vspeed = -vspeed
		}			
	}
}
else if(hspeed != 0){
	if(h_block && !h_block.done){
		scr_restart_level()
	}
	if(hspeed > 0){
		if(!bottom_block){
			hspeed = 0
			vspeed = s
		}
		else if(!h_block){
			//do nothing
		}
		else if(!top_block){
			hspeed = 0
			vspeed = -s
		}
		else{
			hspeed = -hspeed
		}
	}
	else{
		if(!top_block){
			hspeed = 0
			vspeed = -s
		}
		else if(!h_block){
			//do nothing
		}
		else if(!bottom_block){
			hspeed = 0
			vspeed = s
		}
		else{
			hspeed = -hspeed
		}			
	}
}