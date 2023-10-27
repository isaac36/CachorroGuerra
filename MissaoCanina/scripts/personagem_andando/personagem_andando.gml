// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function personagem_andando(){
		
	if(BOTAO_CIMA){
		
	velocidadeY-=1.2;
	//lado="cima";
	sprite_index = sprite_andando;
		
		};
		
	if(BOTAO_BAIXO){
		
	velocidadeY+=1.2;
	//lado="baixo";
	sprite_index = sprite_andando;
		
		};
		
	if(BOTAO_ESQUERDA){
		
	 velocidadeX-=1.2;
	 lado="esquerda";sprite_index = sprite_andando; image_xscale = -1;
		
		};
		
	if(BOTAO_DIREITA){
		
	velocidadeX+=1.2;
	lado="direita";sprite_index = sprite_andando; image_xscale = 1;
		
		};
		
	if((!BOTAO_BAIXO)and(!BOTAO_CIMA)and(!BOTAO_DIREITA)and(!BOTAO_ESQUERDA)){
	
	estado = personagem_parado;
	
	}

}