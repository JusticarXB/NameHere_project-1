
//GUI Setup
draw_set_color(c_white);
draw_set_font(fnt_earlyGameboy);
draw_set_alpha(.5);
draw_set_halign(fa_center);


//Held Item Box
draw_rectangle(room_width - 150,50,room_width -50,150,false);

//reseting Alpha and changing color to black
draw_set_alpha(1);
draw_set_color(c_black);

draw_text(room_width - 100, 175, global.itemName);
draw_sprite(global.item,0,room_width-100,100);

