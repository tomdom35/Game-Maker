//bounce off other colliding enemies
if(h_enemy){
	direction = -direction + 180 + random_range(-10,10);
}

if(v_enemy){
	direction = -direction + random_range(-10,10);
}