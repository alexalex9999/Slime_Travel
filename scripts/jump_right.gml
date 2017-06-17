

if((slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right)){
    slime.image_index = 0
    slime.image_speed = 1/2
   // if(position_meeting(slime.x, slime.y, switch_button)&&!argument0){
   //     slime.alarm[1] = 1;
    //    jump_right(true)
    //    return false;
    //}
    slime.sprite_index = slime_jump_right
    if(position_meeting(slime.x+96, slime.y, ice_floor)){
        slime.sprite_index = slime_ice_right;
        return true;
    }
    if(position_meeting(slime.x+96, slime.y, wall)){
        slime.sprite_index = slime_bounce_right
        audio_play_sound(bonk_snd, 1, false)
        return false;
    }
    if(position_meeting(slime.x+96, slime.y, pillar)){
        slime.sprite_index = slime_bounce_right
        audio_play_sound(bonk_snd, 1, false)
        slime.alarm[0] = 1;
        return false;
    }
    if(position_meeting(slime.x+96, slime.y, pit)){
        slime.sprite_index = slime_into_pit_right;
        return false;
    }
    if(position_meeting(slime.x+96, slime.y, pushable_box)){
        if(position_meeting(slime.x+192, slime.y, wall) || position_meeting(slime.x+192, slime.y, pushable_box) || position_meeting(slime.x+192, slime.y, pillar) || position_meeting(slime.x+192, slime.y, ice_floor)){
            if(position_meeting(slime.x+192, slime.y, ice_floor)&&!position_meeting(slime.x+192, slime.y, pushable_box)){
                slime.sprite_index = slime_push_ice_right;
                audio_play_sound(move_box_snd, 1, false);
                (instance_position(slime.x+96, slime.y, pushable_box)).sprite_index = empty_sprite;
                return true;
            }
            else{
                slime.sprite_index=slime_box_right
                audio_play_sound(bonk_snd, 1, false)
                (instance_position(slime.x+96, slime.y, pushable_box)).sprite_index = empty_sprite;
                return false;
            }
        }
        else{
            slime.sprite_index = slime_push_right;
            (instance_position(slime.x+96, slime.y, pushable_box)).sprite_index = empty_sprite
            audio_play_sound(move_box_snd, 1, false);
            return true;
        }
    }
    slime.mask_index = no_mask;
    return true;
}
