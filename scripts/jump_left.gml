#define jump_left
if(slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right){
    slime.image_index = 0
    slime.image_speed = 1/2
    if((instance_position(slime.x-96, slime.y, all)==noone) || (instance_position(slime.x-96, slime.y, invisible_button)!=noone) || (instance_position(slime.x-96, slime.y, switch_button)!=noone) || (instance_position(slime.x-96, slime.y, door_nextroom)!=noone)){
        slime.sprite_index = slime_jump_left
        return true
    }
    if((instance_position(slime.x-96, slime.y, wall)!=noone) || (instance_position(slime.x-96, slime.y, pillar)!=noone)){
        slime.sprite_index = slime_bounce_left
        audio_play_sound(bonk_snd, 1, false)
    }
    if((instance_position(slime.x-96, slime.y, pit)!=noone)){
        slime.sprite_index = slime_idle_left
        
    }
    if(instance_position(slime.x-96, slime.y, pushable_box)!=noone){
        if(instance_position(slime.x-192, slime.y, wall)!=noone || instance_position(slime.x-192, slime.y, pushable_box)!=noone || instance_position(slime.x-192, slime.y, pillar)!=noone){
            slime.sprite_index=slime_bounce_left
            audio_play_sound(bonk_snd, 1, false)
        }
        else{
        slime.sprite_index = slime_push_left;
        (instance_position(slime.x-96, slime.y, pushable_box)).sprite_index = empty_sprite
        audio_play_sound(move_box_snd, 1, false);
        return true
        }
    }
    mask_index = no_mask
    return false;;
}

#define script14
if(sprite_index == slime_idle_front || sprite_index == slime_idle_back || 
sprite_index == slime_idle_left || sprite_index == slime_idle_right){
    image_index = 0
    image_speed = 1/2
    if((instance_position(x-96, y, all)==noone) || (instance_position(x-96, y, invisible_button)!=noone) || (instance_position(x-96, y, switch_button)!=noone) || (instance_position(x-96, y, door_nextroom)!=noone)){
        sprite_index = slime_jump_left
    }
    if((instance_position(x-96, y, wall)!=noone) || (instance_position(x-96, y, pillar)!=noone)){
        sprite_index = slime_bounce_left
        audio_play_sound(bonk_snd, 1, false)
    }
    if((instance_position(x-96, y, pit)!=noone)){
        sprite_index = slime_idle_left
    }
    if(instance_position(x-96, y, pushable_box)!=noone){
        if(instance_position(x-192, y, wall)!=noone || instance_position(x-192, y, pushable_box)!=noone || instance_position(x-192, y, pillar)!=noone){
            sprite_index=slime_bounce_left
            audio_play_sound(bonk_snd, 1, false)
        }
        else{
        sprite_index = slime_push_left;
        (instance_position(x-96, y, pushable_box)).sprite_index = empty_sprite
        audio_play_sound(move_box_snd, 1, false);
        }
    }
    mask_index = no_mask;
}
