//ice_box_slime(argument0(slime movement direction), argument1(box id))
switch(argument0){
case "down":
    if(place_meeting(x.argument1,y.argument1+12,wall)||place_meeting(x.argument1,y.argument1+12,pillar)||place_meeting(x.argument1,y.argument1+12,box)){
        return false;
    }
    else{
        if(place_meeting(x.argument1,y.argument1+12,pit)){
            //get pit thing
        }
        else{
            return true;
        }
    }
    break;
case "up":
    if(place_meeting(x.argument1,y.argument1-12,wall)||place_meeting(x.argument1,y.argument1-12,pillar)||place_meeting(x.argument1,y.argument1-12,box)){
        return false;
    }
    else{
        if(place_meeting(x.argument1,y.argument1-12,pit)){
            //get pit thing
        }
        else{
            return true;
        }
    }
    break;
case "left":
    if(place_meeting(x.argument1-12,y.argument1,wall)||place_meeting(x.argument1-12,y.argument1,pillar)||place_meeting(x.argument1-12,y.argument1,box)){
        return false;
    }
    else{
        if(place_meeting(x.argument1-12,y.argument1,pit)){
            //get pit thing
        }
        else{
            return true;
        }
    }
    break;
case "right":
    if(place_meeting(x.argument1+12,y.argument1,wall)||place_meeting(x.argument1+12,y.argument1,pillar)||place_meeting(x.argument1+12,y.argument1,box)){
        return false;
    }
    else{
        if(place_meeting(x.argument1+12,y.argument1,pit)){
            //get pit thing
        }
        else{
            return true;
        }
    }
    break;
}
