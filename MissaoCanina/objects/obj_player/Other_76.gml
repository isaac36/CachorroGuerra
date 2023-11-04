/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var _eventType = event_data[?"event_type"];
var _message = event_data[?"message"];
var _elementID = event_data[?"element_id"];

if(_eventType=="sequence event"){

if (_message=="deletar_animação"){
layer_sequence_destroy(_elementID);

}
}
