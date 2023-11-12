/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

a = irandom_range(0,300);

if(a==0){cont=0;}

if(cont==0)and(!instance_exists(obj_bomba_aerea))
{

miraX = irandom_range(obj_player.x-400,obj_player.x+400);
miraY = irandom_range(obj_player.y-400,obj_player.y+400);

instance_create_depth(miraX,miraY,depth,obj_bomba_aerea);
}

cont++;