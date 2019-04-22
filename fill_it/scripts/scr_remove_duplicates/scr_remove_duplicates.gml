//removes duplicates in a list
//arg0 = list to remove duplicates from
//returns passed in list with duplicates removed

list = argument0
new_list = ds_list_create()
show_debug_message(ds_list_size(list))
for(i = 0; i < ds_list_size(list); i++){
	val = list[| i]
	if(scr_list_pos_index(val,new_list) == -1){
		ds_list_add(new_list,val)
	}
}

return new_list