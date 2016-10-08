scr_getinputs();

//Set direction depending on input
dir = clamp(key_left + key_right + gamepadH,-1,1);

//Move left & Right
if (dir != 0)
{
    hsp = movespeed * dir;
    
    if (movespeed < max_speed)
    {
        movespeed += acc;
        if (movespeed > max_speed) movespeed = max_speed;
        
    }
}


//Stop character & apply friction
if (dir == 0)
{
    movespeed = resetMoveSpeed;
    if (abs(hsp) >= 0)
    {
        hsp -= f *sign(hsp);
        if (hsp > -f) && (hsp < f) hsp = 0;
    }
}

//Debug movement speed:
//show_debug_message(string(hsp));  

//Gravity

if (vsp < 50)
    {
        vsp += grav;
    }

//Jump if on ground


if (place_meeting(x, y+1, obj_wall))
    {
        vsp = key_jump * -jumpspeed;
    }
    
scr_checkcollisionandmove();

