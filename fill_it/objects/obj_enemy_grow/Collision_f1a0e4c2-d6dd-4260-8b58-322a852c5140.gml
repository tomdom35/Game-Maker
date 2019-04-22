if(other.done && increase){
	if(grow_horz){
		image_xscale -= increment	
	}
	if(grow_vert){
		image_yscale -= increment	
	}
	increase = false
	decrease = true
}