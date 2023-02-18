//Desc Draw black bars

if(mode != Trans_Mode.OFF){

	draw_set_color(c_black);
	draw_rectangle( 0 , 0 , w+100 , percent*h_half , false );
	draw_rectangle( 0 , h , w+100 , h-(percent*h_half) , false );

}

draw_set_color(c_white);
draw_text( 50 , 50 , string(percent) );
