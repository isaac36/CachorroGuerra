/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!place_meeting(x,y,obj_zona_safe)){
cont=0;

audio = audio_play_sound(som_bomba_caindo,0,0);
audio_sound_gain(audio,0,0);
}else{instance_destroy();}

