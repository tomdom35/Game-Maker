player = (instance_exists(h_player) ? h_player : (instance_exists(v_player) ? v_player : noone))

//if enemy is colliding with the player
if(player){
	
	//block that the player is on top of
	player_block = instance_position(player.x,player.y,obj_block)
	
	//if the player is on a block, and that block is not in a done state, restart the game
	if(player_block && !player_block.done){
		scr_restart_level()
	}
}