/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_xscale = 1.5;
image_yscale = 1.5;

if(cont>20){cont=0};
if(cont<10){

sprite_index=spr_invisivel;

}else{sprite_index=spr_bomba_aereaX};


cont++;

volume = 150/distance_to_object(obj_player);
//if(volume<0.2){volume=0};

audio_sound_gain(audio,volume,0);
if(!audio_is_playing(audio)){instance_create_depth(x,y,depth,obj_explosaoG);instance_destroy();}
