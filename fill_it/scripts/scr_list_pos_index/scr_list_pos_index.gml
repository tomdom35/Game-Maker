//returns the index of p in the list l
//arg0 = x and y (list of size 2. x at index 0, y at index 1)
//arg1 = list of positions (x and y)

p = argument0
l = argument1

for(j = 0; j < ds_list_size(l); j++){
	temp_p = l[| j]
	if(temp_p[0] == p[0] && temp_p[1] == p[1]){
		return j
	}
}

return -1