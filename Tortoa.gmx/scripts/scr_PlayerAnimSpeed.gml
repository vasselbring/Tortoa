var dir = argument0;                    //controller direction input
var minAnimSpeedMultiply = argument1;   //minimum animation speed multiplier
var showdebug = argument2;              //Print Debug Info
var dirPos = dir;                       //Positive value of dir variable


//Convert negative dir-values
if (sign(dir) == -1)
{
    dirPos = dir * -1;
}


var PlayerAnimSpeed = dirPos;

//Set minimum output values
if (sign(dir) == 1 && dir < 0.2)
{
    PlayerAnimSpeed = minAnimSpeedMultiply;
}

if (sign(dir) == -1 && dir > -0.2)
{
    PlayerAnimSpeed = minAnimSpeedMultiply;
}

//Print debug info
if showdebug == true
{
    show_debug_message("Player animation speed multiplier: " + string(PlayerAnimSpeed) + ". Controller Input: " + string(dir));
}


return PlayerAnimSpeed



