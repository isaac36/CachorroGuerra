/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





// Inherit the parent event
volume = 150/distance_to_object(obj_player);
//if(volume<0.2){volume=0};

som = audio_play_sound(som_explos_G,0,0);



audio_sound_gain(som,volume,0);


image_xscale = 2;
image_yscale = 2;
sprite_index=spr_explosaoG;

