//change direction line is rotating
if(dir >= 135 || dir <= 45){
	spd *= -1
}

//increment direction by speed of rotation
dir += spd

//set line endpoints
x_line_val = x+lengthdir_x(len,dir)
y_line_val = y+lengthdir_y(len,dir)

//draw line (laser)
draw_set_colour(c_red);
draw_line(x, y, x_line_val, y_line_val);

//check if player is colliding with line being drawn
player = collision_line(x, y, x_line_val, y_line_val, obj_player, false, false)
block = collision_line(x, y, x_line_val, y_line_val, obj_block, false, false)

if(instance_exists(player)){
	//block that the player is on top of
	player_block = instance_position(player.x,player.y,obj_block)
	
	//if the player is on a block, and that block is not in a done state, restart the level
	if(instance_exists(player_block)){
		if(!player_block.done){
			scr_restart_level()
		}
	}
	else{
		scr_restart_level()
	}
}

if(instance_exists(block)){
	if(!block.done){
		scr_restart_level()
	}
}