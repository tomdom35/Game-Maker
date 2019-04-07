/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,self)){
	active = true
	x_dif = mouse_x - x
}

if(active && mouse_check_button(mb_left)){
	x = mouse_x - x_dif
	
	if(x > room_width - thresh && !r1){
		x = room_width - thresh
	}
	
	if(x - gap - thresh < 0 && !r1){
		x = gap + thresh
	}
	
	if(x + gap + self.sprite_width + thresh > room_width && r1){
		x = room_width - gap - thresh - self.sprite_width
	}
	
	if(x + self.sprite_width - thresh < 0 && r1){
		x = -self.sprite_width + thresh
	}
}
else{
	active = false
}

if(!active){
	x = follow_rec.x + follow_dist
}