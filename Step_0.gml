var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Se o sprite tem origem centralizada
hovering = (mx > x - sprite_width / 2) && (mx < x + sprite_width / 2) &&
           (my > y - sprite_height / 2) && (my < y + sprite_height / 2);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		audio_play_sound(snd_button, 1, false);
		room_restart();
	}
	
} 

if (clicked) 
{
	image_index = 2;
} 
else if (hovering) 
{
	image_index = 1;
} 
else 
{
	image_index = 0;
} 