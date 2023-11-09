// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function missao_8(){
	
	global.missao = 8;
	pode_passar = true;
	
	if(cont_cena==0){
    audio_stop_all();
	instance_destroy(obj_musica);
	instance_create_depth(x,y,depth,obj_musica);
	}
	cont_cena++;

}