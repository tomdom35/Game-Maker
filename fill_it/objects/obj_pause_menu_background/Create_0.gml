screen_shot = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0); 
audio_pause_all()
instance_deactivate_all(true)
sprite_index = screen_shot
//draw_sprite(screen_shot,0,0,0)
//draw_set_color(c_black);
//draw_set_alpha(.1);
//draw_rectangle(0, 0, room_width, room_height, false);
instance_create_depth(room_width/2,room_height/2,-2,obj_pause_menu)