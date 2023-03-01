
//set up
draw_set_color(c_white);
draw_set_font(fnt_earlyGameboy);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


//drawing menu items
for(i = 0; i < menuItems; i++){
	
	var currentText = menu[i];
	
	if(i == currentOption) currentText = string_insert("~", currentText, 0);
	
	menuY = room_height - 250 - 75 * i;

	draw_text_transformed(menuX,menuY,currentText, 3,3,0);
	

}