 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
depth = -y;

if(modo==0)and(place_meeting(x,y,obj_farejar)){modo=1}
else if(modo==1){

sprite_index = spr_cheiro;

if(place_meeting(x,y,obj_player)){modo=2}

}else if(modo==2){


sprite_index = spr_ferido;



if(dir==1){image_xscale = 1; image_angle = 0;}
if(dir==-1){image_xscale = -1; image_angle = 0;}










if(obj_player.agarrar==true)and(place_meeting(x,y,obj_player)){
 
 
 
 
if(obj_player.pegou1==false){
obj_player.pegou1 = id;
}








if(obj_player.pegou1 == id){

if(obj_player.lado=="esquerda"){dir=-1;image_angle = -40;}
if(obj_player.lado=="direita"){dir=1;image_angle = 40;}

depth = obj_player.depth -3;


x = obj_player.x+dir*(10);
y = obj_player.y;

}


};


if(place_meeting(x,y,obj_salvei_pessoa)){global.missao=4;audio_play_sound(som_missao,0,0);instance_destroy()};


}






