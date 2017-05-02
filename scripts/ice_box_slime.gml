//ice_box_slime(argument0(slime movement direction), argument1(box id))
switch(argument0){
case "down":
    if(place_meeting(argument1.x,argument1.y+12,wall)||place_meeting(argument1.x,argument1.y+12,pillar)||place_meeting(argument1.x,argument1.y+12,box)){
        return false;
    }
    else{
        if(place_meeting(argument1.x,argument1.y+12,pit)){
            //get pit thing
        }
        else{
            argument1.y+=12
            return true;
        }
    }
    break;
case "up":
    if(place_meeting(argument1.x,argument1.y-12,wall)||place_meeting(argument1.x,argument1.y-12,pillar)||place_meeting(argument1.x,argument1.y-12,box)){
        return false;
    }
    else{
        if(place_meeting(argument1.x,argument1.y-12,pit)){
            //get pit thing
        }
        else{
            argument1.y-=12
            return true;
        }
    }
    break;
case "left":
    if(place_meeting(argument1.x-12,argument1.y,wall)||place_meeting(argument1.x-12,argument1.y,pillar)||place_meeting(argument1.x-12,argument1.y,box)){
        return false;
    }
    else{
        if(place_meeting(argument1.x-12,argument1.y,pit)){
            //get pit thing
        }
        else{
            argument1.x-=12
            return true;
        }
    }
    break;
case "right":
    if(place_meeting(argument1.x+12,argument1.y,wall)||place_meeting(argument1.x+12,argument1.y,pillar)||place_meeting(argument1.x+12,argument1.y,box)){
        return false;
    }
    else{
        if(place_meeting(argument1.x+12,argument1.y,pit)){
            //get pit thing
        }
        else{
            argument1.x+=12
            return true;
        }
    }
    break;
}
