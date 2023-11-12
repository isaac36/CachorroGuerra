/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


  
 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
depth = -y;
image_angle = 0;



if(modo==0)and(place_meeting(x,y,obj_farejar)){modo=1}
else if(modo==1){

sprite_index = spr_cheiro;

} 





if(place_meeting(x,y,obj_player))or(place_meeting(x,y,obj_cachorro_inimigo)){


explosao=instance_create_depth(x,y,depth,obj_explosao);
instance_destroy();
exit;

};


if(distance_to_object(obj_player)<18)and(obj_player.estado==personagem_cavar){
	//audio_play_sound(som_selecionar,0,0);
	buraco = instance_create_depth(x,y,depth,obj_buraco);
	buraco.image_xscale= -obj_player.image_xscale;
	instance_destroy();  
	
}

