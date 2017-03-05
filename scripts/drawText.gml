pages = argument0;
text = argument1;
xpos = argument2;
ypos = argument3;
/*/if(pages = true){
    for(var l = 0;l<=pagenumber;l++)
        {
             textlength = string_length(text[l]);
    textstring = text[l];
    stringArray[textlength-1] = 0;
    width_drawn = 0;
    lines_drawn = 0;
    for(var i=textlength-1;i>=0;i--){
        stringArray[i] = string_char_at(textstring,i+1);
    }
   
   draw_text(xpos,ypos,stringArray[0]);
   width_drawn+=string_width(stringArray[0]);
  for(var o = 1; o<global.chars_drawn;o++){
    draw_text(xpos+width_drawn,ypos+lines_drawn,stringArray[o]);
    width_drawn+=string_width(stringArray[o]);
        }
        global.pageno++;
        }
}else{
/*/
    textlength = string_length(text);
    textstring = text;
    stringArray[textlength-1] = 0;
    width_drawn = 0;
    line_drawn = 0;
    for(var i=textlength-1;i>=0;i--){
        stringArray[i] = string_char_at(textstring,i+1);
    }
   // for(var k = 0; k<textlength; k++){
  //  draw_text(xpos,ypos,stringArray[k]);
  //  }
   draw_text(xpos,ypos,stringArray[0]);
   width_drawn+=string_width(stringArray[0]);
  for(var o = 1; o<global.chars_drawn;o++){
  if(stringArray[o]=='#'){
  width_drawn=0;
  line_drawn+=string_height(stringArray[o-1]);
  }
    draw_text(xpos+width_drawn,ypos+(line_drawn*5),stringArray[o]);
    width_drawn+=string_width(stringArray[o]);
  }
//}

