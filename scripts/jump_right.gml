if(slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right){
    slime.image_index = 0
    slime.image_speed = 1/2
    if(instance_position(slime.x+96, slime.y, all)==noone || instance_position(slime.x+96, slime.y, door_nextroom) || (instance_position(slime.x+96, slime.y, invisible_button)!=noone) || (instance_position(slime.x+96, slime.y, switch_button)!=noone)){
        slime.sprite_index = slime_jump_right
        return true
    }
    if(instance_position(slime.x+96, slime.y, wall)!=noone || instance_position(slime.x+96, slime.y, pillar)!=noone){
        slime.sprite_index = slime_bounce_right
        audio_play_sound(bonk_snd, 1, false)
    }
    if((instance_position(slime.x+96, slime.y, pit)!=noone)){
        slime.sprite_index = slime_idle_right
    }
    if(instance_position(slime.x+96, slime.y, pushable_box)!=noone){
        if(instance_position(slime.x+192, slime.y, wall)!=noone || instance_position(slime.x+192, slime.y, pushable_box)!=noone  || instance_position(slime.x+192, slime.y, pillar)!=noone){
            slime.sprite_index=slime_bounce_right
            audio_play_sound(bonk_snd, 1, false)
        }
        else{
        slime.sprite_index = slime_push_right;
        (instance_position(slime.x+96, slime.y, pushable_box)).sprite_index = empty_sprite
        audio_play_sound(move_box_snd, 1, false);
        return true
        }
    }
    mask_index = no_mask;
    return false;
}
