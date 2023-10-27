 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(fonte_dialogo);

draw_set_halign(fa_middle);

draw_sprite_ext(spr_quadrado_preto,0,960,120,8,2,0,0,0.5);

draw_set_alpha(1);
draw_set_color(c_white);
if(global.missao==1)draw_text(960,100,"Missão: "+"Fale com seu dono na base central");
if(global.missao==1)draw_text(960,150,"Missão: "+"Use (W S A D) para se movimentar");
if(global.missao==2)draw_text(960,100,"Missão: "+"Vá para Oeste falar com o sargento");
if(global.missao==3)draw_text(960,100,"Missão: "+"Use (U) para achar o ferido e SEGURE (I) para arrastar");
if(global.missao==3)draw_text(960,150,"Arraste o ferido até a base central");
if(global.missao==4)draw_text(960,100,"Missão: "+"Fale com seu dono na base central");
if(global.missao==5)draw_text(960,100,"Missão: "+"Vá para a cabana ao leste e pegue os medicamentos");
if(global.missao==6)draw_text(960,100,"Missão: "+"Você pegou os medicamentos, volte para a base central");
if(global.missao==7)draw_text(960,100,"Missão: "+"Fale com seu dono na base central");
if(global.missao==8)draw_text(960,100,"Missão: "+"Fareje as minas do caminho norte");
if(global.missao==8)draw_text(960,150,"Missão: "+"Use as minas para se livrar dos inimigos");
if(global.missao==9)draw_text(960,100,"Missão: "+"Você conseguiu! Volte para seu dono.");
