if(room == rm_main){
	//set font and color for text
	draw_set_color(c_white)
	draw_set_font(fnt_score)
	
	draw_text(x,y,"Level: " + string(level))
	draw_text(x,y+50,"Score: " + string(score_percent) + "%")
	draw_text(x,y+100,"Goal: " + string(winning_percent) + "%")
}