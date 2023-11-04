// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function personagem_parado(){
	
	sprite_index=sprite_parado;
	
	if(BOTAO_ESQUERDA)or(BOTAO_DIREITA)or(BOTAO_CIMA)or(BOTAO_BAIXO){
	
	estado=estado_andando;
	
	}

	if(BOTAO_ATAQUE){estado=estado_animacao1;cont=0};
}