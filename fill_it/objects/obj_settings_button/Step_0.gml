//Rotate and change color of moused over
if(position_meeting(mouse_x, mouse_y, self)){
	image_blend = c_gray
	image_angle += 2
}
else{
	image_blend = c_white
}