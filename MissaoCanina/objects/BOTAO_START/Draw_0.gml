 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();


if(meuCursor!=global.cursorMenu){cor = make_color_rgb(90,90,90)}else{cor = c_white;}

image_blend=cor;



draw_set_font(fonte_dialogo);
draw_set_halign(fa_middle);
if(image_index<1){altura=0}else{altura=21}
draw_text_transformed_color(x,y-70+altura,"Iniciar",2.5,2.5,0,cor,cor,cor,cor,1); 

