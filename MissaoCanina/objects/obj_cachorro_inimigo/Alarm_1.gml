/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(distance_to_object(obj_player)<500){
var instancia = instance_create_depth(x,y,depth,obj_olhar); 
instancia.dono = id;
} 
alarm_set(1,10);