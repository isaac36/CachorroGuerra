/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

depth= -9999;
if(global.mostrar){sprite_index=spr_colisao5;}else{sprite_index=-1;}
 

if(mira=="player") {
x = obj_player.x;
y = obj_player.y;

}

if(mira=="posicaoinicial"){
x = dono.posicaoinicialX;
y = dono.posicaoinicialY;

if(distance_to_object(dono)<5){dono.IA_modo="parado"};

}

 