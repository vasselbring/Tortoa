scr_getinputs();

// Move left or right
dir = key_left + key_right;
hsp = movespeed * dir;


//Gravity
if (vsp < 50)
    {
        vsp += grav;
    }

//Jump if on ground
if (place_meeting(x, y+4, obj_wall))
    {
        vsp = key_jump * -jumpspeed;
    }
    
scr_checkcollisionandmove();


        
    
    
    //if (place_meeting(x, y+4, obj_wall)) 
    //{
    //    vsp = key_jump * -jumpspeed;
    //}
 
