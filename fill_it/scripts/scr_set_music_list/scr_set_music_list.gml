music_list = ds_list_create()
ds_list_add(music_list,snd_background_music_1)
ds_list_add(music_list,snd_background_music_2)

show_debug_message(music_list[| 0])
show_debug_message(music_list[| 1])