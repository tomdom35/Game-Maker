//remove pause menu items when game is unpaused, and reactivate existing objects
if(keyboard_check_pressed(vk_escape)){
	instance_destroy(obj_pause_menu)
	instance_destroy(obj_main_menu_button)
	instance_destroy(obj_pause_level_select_button)
	instance_destroy(obj_pause_how_to_play_button)
	instance_destroy(obj_settings_button)
	audio_resume_all()
	instance_activate_all()
	instance_destroy()
}