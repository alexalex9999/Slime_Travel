
/*if(slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right){
    slime.image_index = 0
    slime.image_speed = 1/2
    if(instance_position(slime.x, slime.y-96, all)==noone || (instance_position(slime.x, slime.y-96, invisible_button)!=noone) || ((instance_position(slime.x, slime.y-96, switch_button)!=noone) && (instance_position(slime.x, slime.y-96, pushable_box)==noone)) || instance_position(slime.x, slime.y-96, door_nextroom)){
        slime.sprite_index = slime_jump_up
        return true
    }
    if((instance_position(slime.x, slime.y-96, wall)!=noone) || (instance_position(slime.x, slime.y-96, pillar)!=noone)){
        slime.sprite_index = slime_bounce_up
        audio_play_sound(bonk_snd, 1, false)
    }
    if((instance_position(slime.x, slime.y-96, pit)!=noone)){
        slime.sprite_index = slime_idle_back
    }
    if(instance_position(slime.x, slime.y-96, pushable_box)!=noone){
        if(instance_position(slime.x, slime.y-192, wall)!=noone || instance_position(slime.x, slime.y-192, pushable_box)!=noone  || instance_position(slime.x, slime.y-192, pillar)!=noone){
            slime.sprite_index=slime_bounce_up
            audio_play_sound(bonk_snd, 1, false)
        }
        else{
        slime.sprite_index = slime_push_up;
        (instance_position(slime.x, slime.y-96, pushable_box)).sprite_index = empty_sprite
        audio_play_sound(move_box_snd, 1, false);
        return true
        }
    }
    mask_index = no_mask;
    return false;
}*/


if((slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right)){
    slime.image_index = 0
    slime.image_speed = 1/2
    slime.sprite_index = slime_jump_up
    if(position_meeting(slime.x, slime.y, switch_button)){
        slime.alarm[1] = 1;
        return true;
    }
    if(position_meeting(slime.x, slime.y-96, ice_floor)){
        slime.sprite_index = slime_ice_up;
        return true;
    }
    if(position_meeting(slime.x, slime.y-96, wall)){
        slime.sprite_index = slime_bounce_up
        audio_play_sound(bonk_snd, 1, false)
        return false;
    }
    if(position_meeting(slime.x, slime.y-96, pillar)){
        slime.sprite_index = slime_bounce_up
        audio_play_sound(bonk_snd, 1, false)
        slime.alarm[0] = 1;
        return false;
    }
    if(position_meeting(slime.x, slime.y-96, pit)){
        slime.sprite_index = slime_into_pit_up;
        return false;
    }
    if(position_meeting(slime.x, slime.y-96, pushable_box)){
        if(position_meeting(slime.x, slime.y-192, wall) || position_meeting(slime.x, slime.y-192, pushable_box) || position_meeting(slime.x, slime.y-192, pillar) || position_meeting(slime.x, slime.y-192, ice_floor)){
            if(position_meeting(slime.x, slime.y-192, ice_floor)&&!position_meeting(slime.x, slime.y-192, pushable_box)){
                slime.sprite_index = slime_push_ice_up;
                audio_play_sound(move_box_snd, 1, false);
                (instance_position(slime.x, slime.y-96, pushable_box)).sprite_index = empty_sprite;
                return true;
            }
            else{
                slime.sprite_index=slime_box_up
                audio_play_sound(bonk_snd, 1, false)
                (instance_position(slime.x, slime.y-96, pushable_box)).sprite_index = empty_sprite;
                return false
            }
        }
        else{
            slime.sprite_index = slime_push_up;
            (instance_position(slime.x, slime.y-96, pushable_box)).sprite_index = empty_sprite
            audio_play_sound(move_box_snd, 1, false);
            return true;
        }
    }
    slime.mask_index = no_mask;
    return true;
}
