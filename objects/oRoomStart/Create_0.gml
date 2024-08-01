display_reset(0, false);
window_set_fullscreen(false);
var display_width = display_get_width();
var display_height = display_get_height();
window_set_position((display_width - window_get_width()) / 2, (display_height - window_get_height()) / 2);