/// @description Decrease Var of Target

//Initialize Variables
mbLeftPress = mouse_check_button_pressed(mb_left);
var target = instance_place(x,y,class_interactable);

//Object cursor position is equal to actual cursor position.
x = mouse_x;
y = mouse_y;

//If left mouse button is pressed and target obj is at position of mouse and has 'hp' variable
//Decrease target(tree)'s health. If health minimum limit has been reached destroy target object
if mbLeftPress
{
	image_speed = 1;
	if target
	{
		if instance_exists(target)
		{
			if variable_instance_exists(target,"hp")
			{
				with(target)
				{
					//Run script decrease variable vor X variable and X amount
					hp = decrease_variable(hp,1);	
					//Check if X variable equals or is lower than X limit
					if checkLimitMin_variable(hp,0)
					{
						instance_destroy();
					}
				}
			}
		}
	}
}

