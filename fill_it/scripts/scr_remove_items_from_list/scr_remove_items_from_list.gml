//removes items from a list
//arg0 = items to remove from list
//arg1 = list to remove items from

items = argument0
list = argument1

for(i = 0; i < ds_list_size(items); i++){
	val = items[| i]
	index = scr_list_pos_index(val,list)
	if(index >= 0){
		ds_list_delete(list,index)
	}
}