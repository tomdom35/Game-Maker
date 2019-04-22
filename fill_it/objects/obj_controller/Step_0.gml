//set score_percent to how many 'done' blocks are placed out of all the total spots to place blocks
if(room == rm_main){
	score_percent = floor((done_count/total_spots)*100)

	if(score_percent >= winning_percent or keyboard_check_pressed(vk_shift)){
		scr_next_level()
	}

	//play music tracks in order, start new track when current track ends
	if(!audio_is_playing(music_list[| music_index])){
		if(ds_list_size(music_list) > music_index+1 && audio_exists(music_list[| music_index+1])){
			music_index += 1
			audio_play_sound(music_list[| music_index],0,0)
		}
	}
	
	//pause game
	if(keyboard_check_pressed(vk_escape)){
		instance_create_depth(0,0,-1,obj_pause_menu_background)
	}
}