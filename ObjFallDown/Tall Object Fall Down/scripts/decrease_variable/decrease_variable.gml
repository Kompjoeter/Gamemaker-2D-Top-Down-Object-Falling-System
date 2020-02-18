///@function damage_variable(targetVar,dmg)
///@argument targetVar
///@argument dmg

//Initialize Variables
var targetVar, dmg;
targetVar = argument0;
dmg = argument1;

//Substract damage from target variable, return remaining amount.
targetVar -= dmg;
return targetVar;