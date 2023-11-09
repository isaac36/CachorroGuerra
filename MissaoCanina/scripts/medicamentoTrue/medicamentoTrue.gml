// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function medicamentoTrue(){

if(pode_passar==false){
obj_player.medicamento = true;
audio_play_sound(som_missao,0,0);
global.missao = 6;
}
pode_passar = true;

}