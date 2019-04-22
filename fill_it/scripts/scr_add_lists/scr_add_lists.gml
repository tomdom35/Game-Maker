//adds list1 into list2

list1 = argument0
list2 = argument1

for(ind = 0; ind < ds_list_size(list1); ind++){
	ds_list_add(list2,list1[| ind])
}