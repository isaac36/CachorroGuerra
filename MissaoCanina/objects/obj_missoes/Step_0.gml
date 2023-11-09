/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(!instance_exists(obj_cachorro_inimigo))and(cont_missao8==false){audio_play_sound(som_missao,0,0);cont_missao8=true;};

if(global.missao_cont==3)and(global.missao==3){global.missao_cont=0;global.missao=4;audio_play_sound(som_missao,0,0);}

if(cont_missao8){global.missao=9};

