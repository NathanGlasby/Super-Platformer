// Get Player Input
key_left = keyboard_check(vk_left); // checks if user is pressing left arrow key
key_right = keyboard_check(vk_right); // right arrow key
key_jump = keyboard_check_pressed(vk_space); // space key

// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	
	vsp = -7;
}

// Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;		
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x+vsp,y,oWall))
{
	while(!place_meeting(x+sign(vsp),y,oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;		
}
y = y + vsp;