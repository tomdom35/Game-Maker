ui_x = room_width/2
ui_y = room_height/2

instance_create_depth(ui_x,(ui_y)-75,depth-1,obj_main_menu_button)
instance_create_depth(ui_x-150,(ui_y)+75,depth-1,obj_pause_level_select_button)
instance_create_depth(ui_x+150,(ui_y)+75,depth-1,obj_pause_how_to_play_button)
instance_create_depth(room_width-50,room_height-50,depth-1,obj_settings_button)