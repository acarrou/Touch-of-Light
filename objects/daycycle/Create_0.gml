seconds = 0;
minutes = 0;
hours = 0;

day = 1;
season = 1;
year = 1;

time_increment = 10 //seconds per step

max_darkness = 0.7;
darkness = 0;
light_color = c_black;
draw_daylight = true;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

enum phase {
	sunrise = 1,
	daytime = 3,
	sunset = 20,
	nighttime = 24
}
