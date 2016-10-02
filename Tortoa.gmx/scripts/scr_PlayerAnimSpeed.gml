//arguments: controlvalue, minanimspeed, maxanimspeed, debug
var minAnimSpeed = argument1;                                       //minimum animation speed multiplier
var maxAnimSpeed = argument2;                                       //max animation speed
var showdebug = argument3;                                          //Print Debug Info

var PlayerAnimSpeed = (argument0 * sign(argument0) / max_speed);    //player speed as a positive value scaled to 0.0-1.0    

             
       
//Set minimum animation speed values
if (PlayerAnimSpeed < minAnimSpeed)
{
    PlayerAnimSpeed = minAnimSpeed;
}


//Print debug info
if showdebug == true
{
    show_debug_message("Player animation speed multiplier: " + string(PlayerAnimSpeed) + ". Controller Input: " + string(argument0));
}



//Change animation speed
if (xprevious != x)
{
    image_speed = maxAnimSpeed * PlayerAnimSpeed;
} else
{
    image_speed = 0;
    image_index = 11;
}



//Change sprite facing direction depending on movement direction
if (xprevious < x)
{
    image_xscale = 1;
}
else if (xprevious > x)
{
    image_xscale = -1;
}



