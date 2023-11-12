/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
event_inherited();

volume = 150/distance_to_object(obj_player);
if(volume>1){volume=1;}
//if(volume<0.05){volume=0};


audio_sound_gain(som,volume,0);