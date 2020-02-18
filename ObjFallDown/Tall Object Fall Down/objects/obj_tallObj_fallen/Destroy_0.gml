/// @description Insert description here
// You can write your code in this editor
var xAdd;
for (xAdd = 16; xAdd > -17; xAdd -= 16)
{
	var logA = instance_create_layer(x+(xAdd*multiplier),y,"Instances",obj_tallObj_part);
	logA.image_xscale = multiplier*-1;
	   
	var crushA = instance_create_layer(logA.x,logA.y-8,"Collision",collision_crush);
	crushA.myInst = logA;
	crushA.hardness = hardness;
}