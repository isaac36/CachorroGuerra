// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function missao_8(){
	
	global.missao = 8;
	pode_passar = true;
	
	if(cont_cena==0){
    audio_stop_all(); global.musica = audio_play_sound(musica_luta,0,1);}
	
	cont_cena++;

}