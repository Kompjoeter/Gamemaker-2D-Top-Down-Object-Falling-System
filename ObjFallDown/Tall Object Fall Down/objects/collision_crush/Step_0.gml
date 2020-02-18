/// @description Crush Object
//The crushing feauture is still very prototype-y
//It basically crushes an object if it's hardness is lower or equal to
//the object's hardness it is colliding with.
//To change the 'crush-yness' of objects, change their 'hardness' variable.


if instance_exists(myInst)
{
	with(myInst)
	{
		var target = instance_place(x,y,class_interactable)
		if instance_exists(target)
		{
			if target.hardness < hardness
			{
				instance_destroy(target);
			}
			else if target.hardness == hardness
			{
				instance_destroy();
				instance_destroy(target);
			}
			else if target.hardness > hardness
			{
				instance_destroy();
			}
		}
	}
}
instance_destroy();
