var xscale = window_get_width()/sprite_get_width(big_phil);
var yscale = window_get_height()/sprite_get_height(big_phil);

    if(global.count<=203){
    
    draw_sprite_ext(big_phil, count/4, 0, 0, xscale, yscale, 0, c_white, 1);
    global.count++;
    }else{
    draw_sprite_ext(big_phil, 50, 0, 0, xscale, yscale, 0, c_white, 1);
    }
    
    

