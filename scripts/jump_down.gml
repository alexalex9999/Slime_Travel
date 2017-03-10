if(slime.sprite_index == slime_idle_front || slime.sprite_index == slime_idle_back || 
slime.sprite_index == slime_idle_left || slime.sprite_index == slime_idle_right){
    slime.image_index = 0
    slime.image_speed = 1/2
    if(instance_position(slime.x, slime.y+96, all)==noone || instance_position(slime.x, slime.y+96, door_nextroom) || (instance_position(slime.x, slime.y+96, invisible_button)!=noone) || (instance_position(slime.x, slime.y+96, switch_button)!=noone)){
        slime.sprite_index = slime_jump_down
        return true;
    }
    if(instance_position(slime.x, slime.y+96, wall)!=noone || instance_position(slime.x, slime.y+96, pillar)!=noone){
        slime.sprite_index = slime_idle_front
        //sprite_index = slime_bounce_down
    }
    if((instance_position(x, y+96, pit)!=noone)){
        slime.sprite_index = slime_idle_front
    }
    if(instance_position(slime.x, slime.y+96, pushable_box)!=noone){
        if(instance_position(slime.x, slime.y+192, wall)!=noone || instance_position(slime.x, slime.y+192, pushable_box)!=noone || instance_position(slime.x, slime.y+192, pillar)!=noone){
            slime.sprite_index = slime_idle_front
            //sprite_index=slime_bounce_down
        }
        else{
        slime.sprite_index = slime_push_down;
        (instance_position(slime.x, slime.y+96, pushable_box)).sprite_index = empty_sprite
        audio_play_sound(move_box_snd, 1, false);
        return true;
        }
    }
    mask_index = no_mask;
    return false;
}
