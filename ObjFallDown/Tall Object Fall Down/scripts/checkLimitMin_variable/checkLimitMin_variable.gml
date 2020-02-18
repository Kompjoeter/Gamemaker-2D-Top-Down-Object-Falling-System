///@function checkLimit_variable(targetVar,limit)
///@argument targetVar
///@argument limit

//Initialize Variables
var targetVar, limit, targetInst;
targetVar = argument0;
limit = argument1;

//Check if target variable is equal or less than the allowed limit, return true or false
if targetVar <= limit
{
	return true;
}
else
{
	return false;
}
