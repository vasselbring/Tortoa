scr_getinputs();

// Move left or right

dir = key_left + key_right + gamepadH;
hsp = movespeed * dir;



if (movespeed < max_speed)
    {
    movespeed += acc;
    }

if (dir == 0)
    {
        movespeed = resetMoveSpeed;
    }



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

