NPC_Interact.spoke = false;
global.paintingInteraction = true;

if(!instance_exists(text_box)){

if(slime.x==x&&slime.y==y+96&&NPC_Interact.spoke==false&&slime.sprite_index==slime_idle_back){

    global.speaking = '';

    global.displaytext = '';
    global.textboxarray = '';
    global.paintingInteraction = true;
    instance_create(view_current.x,view_current.y,text_box);
    
    for(var i=0; i < array_length_1d(global.speakingNPC); i++){
    global.speaking[i] = global.speakingNPC[i];
    global.displaytext[i] = global.displaytextNPC[i];
    global.textboxarray[i] = global.textboxarrayNPC[i];

}
NPC_Interact.spoke = true;
}
}

