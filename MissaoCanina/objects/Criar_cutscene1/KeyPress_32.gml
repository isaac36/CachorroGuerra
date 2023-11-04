 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _player_instance = instance_find(obj_player,0);
var _sequence = Cutscene2;
var _layer_name = "Instances";

var _sequence_create = layer_sequence_create(_layer_name,_player_instance.x,_player_instance.y,_sequence);

var _sequence_instance = layer_sequence_get_instance(_sequence_create);

sequence_instance_override_object(_sequence_instance, obj_player,_player_instance);