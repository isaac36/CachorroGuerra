 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fonte_dialogo);

draw_set_halign(fa_middle);


draw_set_alpha(1);

draw_set_color(c_white);

if(global.missao==1){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Fale com seu dono na base central \n Use (W S A D) para se mover",40,450);
	}
if(global.missao==2){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Vá para o Oeste do mapa falar com o sargento",40,450);
	
	}
if(global.missao==3){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Use (U) para achar o ferido e SEGURE (I) para arrastar \n Arraste o ferido até a base central",40,450);
	}
if(global.missao==4){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Fale com seu dono na base central",40,450);
	
	}
if(global.missao==5){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Vá para a cabana do caminho leste e pegue medicamentos",40,450);
	
	}
if(global.missao==6){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Você pegou os medicamentos \n Volte para a base central",40,450);
	}
if(global.missao==7){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Fale com seu dono a base central",40,450);
	}
if(global.missao==8){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Fareje as minas terrestres do caminho norte e use elas para derrotar os inimigos",40,450);
	}
if(global.missao==9){
	
	draw_sprite_ext(spr_quadrado_preto,0,1000,80,8,2,0,c_black,0.5);
	draw_text_ext(1000,50,"Você conseguiu \n Volte para o seu dono na base central",40,450);
	
	}
