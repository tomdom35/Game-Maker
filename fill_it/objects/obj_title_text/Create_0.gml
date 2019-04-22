//text for title of game

audio_play_sound(snd_main_menu_music, 1, true);

x = 50
y = 20

draw_set_color(c_white)
draw_set_font(fnt_flood_fill)

//minimum x location to spawn obj_title_box objects
box_x_min = 50

//maximum x location to spawn obj_title_box objects
box_x_max = room_width - 50

//minimum y location to spawn obj_title_box objects
box_y_min = 225

//maximum y location to spawn obj_title_box objects
box_y_max = 250


//Create main menu UI elements

ui_x = room_width/2
ui_y = room_height/2

instance_create_depth(ui_x,(ui_y),0,obj_start_button)
instance_create_depth(ui_x,(ui_y)+224,0,obj_level_select_button)
instance_create_depth(ui_x,(ui_y)+352,0,obj_how_to_play_button)
instance_create_depth(room_width-42,room_height-42,0,obj_settings_button)