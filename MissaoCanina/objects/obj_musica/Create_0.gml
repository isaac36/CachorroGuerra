/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

audio_stop_all();

room_atual = room;

switch(room_atual){


case Room1:
	if(global.missao==8){
	global.musica = musica_luta;
	global.loop = 40.7;
	break;
	
	}else{
	global.musica = musica_tutorial_full;
	global.loop = 38.22;
	break;}

case Menu:
	global.musica = musica_menu;
	global.loop = 0;
	break;

};

musica = audio_play_sound(global.musica,0,1);
audio_sound_loop_start(musica, global.loop);//loop tem que ser em Segundos 