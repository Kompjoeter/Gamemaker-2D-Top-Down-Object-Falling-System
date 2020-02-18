///@function falling_object(multiplier,fallSpeed,image_angle,halfAngle,fullAngle,fallen);
///@argument multiplier
///@argument fallSpeed
///@argument image_angle
///@argument halfAngle
///@argument fullAngle
///@argument fallen

//Initialize Variables
var _multiplier,_fallSpeed,_image_angle,_halfAngle,_fullAngle,_fallen;
_multiplier = argument0;
_fallSpeed = argument1;
_image_angle = argument2;
_halfAngle = argument3;
_fullAngle = argument4;
_fallen = argument5;


//If object is still falling, rotate it. If it is rotated beyond the half_angle, speed up the rotation.
if _fallen == false
{
	_image_angle += _multiplier;
	if _image_angle > _halfAngle and _image_angle < _fullAngle or _image_angle < -_halfAngle and _image_angle > -_fullAngle
	{
		_image_angle += _multiplier*_fallSpeed;
	}
}

//If the object's angle equals the fullAngle, stop rotating.
if _image_angle >= _fullAngle or _image_angle <= -_fullAngle
{
	_image_angle = (_fullAngle*_multiplier);
	instance_destroy();
	_fallen = true;
	
}

//Return angle for fallen object.
return(_image_angle);
