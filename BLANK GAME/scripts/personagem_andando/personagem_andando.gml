// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function personagem_andando(){
	
	if(BOTAO_ESQUERDA){
		
	 velocidadeX-=1.2;
	 lado="esquerda";
		
		};
		
	if(BOTAO_DIREITA){
		
	velocidadeX+=1.2;
	lado="direita";
		
		};
		
	if(BOTAO_CIMA){
		
	velocidadeY-=1.2;
	lado="cima";
		
		};
		
	if(BOTAO_BAIXO){
		
	velocidadeY+=1.2;
	lado="baixo";
		
		};

}