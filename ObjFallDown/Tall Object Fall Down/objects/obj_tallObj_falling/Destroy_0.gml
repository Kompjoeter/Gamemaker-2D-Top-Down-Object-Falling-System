/// @description Crush Objects
var tallObjFallen = instance_create_layer(xStart-(48*multiplier),yStart,"Instances",obj_tallObj_fallen);
tallObjFallen.multiplier = multiplier;
tallObjFallen.image_xscale = multiplier*-1;

var xAdd;
for (xAdd = 32; xAdd < 65; xAdd += 16)
{
	var crushA = instance_create_layer(xStart-(xAdd*multiplier),yStart-8,"Collision",collision_crush);
	crushA.myInst = tallObjFallen;
	crushA.hardness = hardness;
}
