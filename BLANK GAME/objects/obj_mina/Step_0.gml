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

instance_create_depth(x,y,depth,obj_explosao);instance_destroy();


};


