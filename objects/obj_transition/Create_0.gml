w = display_get_gui_width();
h = display_get_gui_height();

h_half = h/2;
enum Trans_Mode{

	OFF,
	INTRO,
	NEXT,
	GOTO,
	RESTART

}

mode = Trans_Mode.INTRO;
percent = 1;
target = room;