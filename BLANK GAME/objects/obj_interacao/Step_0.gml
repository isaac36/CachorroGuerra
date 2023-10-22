  /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



/// @description Inserir descrição aqui
// Você pode escrever s eu código neste editor

if(place_meeting(x,y,obj_player))and(cont_dialogo==0){
}

if(cont_dialogo==1)and(pode_atender){pode_atender=false;};
 
if(cont_dialogo<comeco){cont_dialogo=comeco;}
//if(cont_dialogo>fim){global.pause=false;instance_destroy();obj_gato.velocidadeX=0;velocidadeY=0;obj_gato.estado=parado;exit}

if(place_meeting(x,y,obj_player)){comecou=true};

if(comecou==true){
	
  


global.pause=true;
global.podedarpause=false;




if(keyboard_check_pressed(obj_player.BOTAO_ATAQUE_SETUP))and(pode_passar){/*audio_play_sound(sfx_bip,0,0);*/cont_cena=0;cont_dialogo++;if(animacao[cont_dialogo]==false){pode_passar=true;}else{pode_passar=false}};

if(animacao[cont_dialogo]!=false){


script_execute(animacao[cont_dialogo]);


}



}


 
 
if(cont_dialogo>fim){global.pause=false;obj_setup.alarm[0]=5;obj_player.velocidadeX=0;velocidadeY=0;obj_player.estado=personagem_parado;instance_destroy();exit}