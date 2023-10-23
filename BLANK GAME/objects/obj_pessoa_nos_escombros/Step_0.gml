 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
depth = -y;
image_angle = 0;

if(modo==0)and(place_meeting(x,y,obj_farejar)){modo=1}
else if(modo==1){

sprite_index = spr_cheiro;

if(place_meeting(x,y,obj_player)){modo=2}

}else if(modo==2){


sprite_index = spr_ferido;














if(obj_player.agarrar==true)and(place_meeting(x,y,obj_player)){

x = obj_player.x;
y = obj_player.y;

depth = obj_player.depth -1;
image_angle = 40;
};


if(place_meeting(x,y,obj_salvei_pessoa)){global.missao=4;audio_play_sound(som_missao,0,0);instance_destroy()};


}






