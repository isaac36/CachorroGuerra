// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function personagem_mortal(){
	
	if(!in_sequence)and(cont=0){
	
	var _player_instance = instance_find(obj_player,0);
	var _sequence = Mortal_direita;
	var _layer_name = "Instances_1";

	var _sequence_create = layer_sequence_create(_layer_name,_player_instance.x,_player_instance.y,_sequence);

	var _sequence_instance = layer_sequence_get_instance(_sequence_create);

	sequence_instance_override_object(_sequence_instance, obj_player,_player_instance);
	layer_sequence_xscale(_sequence_create,image_xscale);
	
	
	cont++;}
	
	if(!in_sequence){estado=estado_parado;cont=0;};

}