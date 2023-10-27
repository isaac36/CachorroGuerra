
if(global.pause==true){
	
	
	
	if(salvei==false){  

    my_path = path_duplicate(path);

	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	//SaveAlarm0 = alarm[0];
	SaveAlarm1 = alarm[1]; 
	SaveAlarm2 = alarm[2];
	SaveAlarm3 = alarm[3];
	SaveAlarm4 = alarm[4];
	SaveAlarm5 = alarm[5];
	SaveAlarm6 = alarm[6];
	SaveAlarm7 = alarm[7];
	SaveAlarm8 = alarm[8];
	SaveAlarm9 = alarm[9];
	SaveAlarm10 = alarm[10];
	SaveAlarm11 = alarm[11];
	salvei=true;
	
	
	}
	
	path_end();
	
	alarm[0]=1;  

	sprite_index = Save_sprite_index;
	image_index = Save_image_index;
    //alarm[0] = SaveAlarm0;
	alarm[1] = SaveAlarm1;
	alarm[2] = SaveAlarm2;
	alarm[3] = SaveAlarm3;
	alarm[4] = SaveAlarm4;
	alarm[5] = SaveAlarm5;
	alarm[6] = SaveAlarm6;
	alarm[7] = SaveAlarm7;
	alarm[8] = SaveAlarm8;
	alarm[9] = SaveAlarm9;
	alarm[10] = SaveAlarm10;
	alarm[11] = SaveAlarm11;
	exit;

}

//
if(global.pause==false){salvei=false;};
//

if(keyboard_check(BOTAO_ESQUERDA_SETUP)){BOTAO_ESQUERDA = true;}else{BOTAO_ESQUERDA = false;}
if(keyboard_check(BOTAO_DIREITA_SETUP)){BOTAO_DIREITA = true;}else {BOTAO_DIREITA = false;}
if(keyboard_check(BOTAO_CIMA_SETUP)){BOTAO_CIMA = true;}else {BOTAO_CIMA = false;}
if(keyboard_check(BOTAO_BAIXO_SETUP)){BOTAO_BAIXO = true;}else {BOTAO_BAIXO = false;}
if(keyboard_check_pressed(BOTAO_PULO_SETUP)){BOTAO_PULO = true;}else {BOTAO_PULO = false;}
if(keyboard_check_pressed(BOTAO_DASH_SETUP)){BOTAO_DASH = true;}else {BOTAO_DASH = false;}
if(keyboard_check_pressed(BOTAO_ATAQUE_SETUP)){BOTAO_ATAQUE = true;}else {BOTAO_ATAQUE = false;}
if(keyboard_check(BOTAO_ATAQUE2_SETUP)){BOTAO_ATAQUE2 = true;}else {BOTAO_ATAQUE2 = false;}
if(keyboard_check(BOTAO_ESPECIAL_SETUP)){BOTAO_ESPECIAL = true;}else {BOTAO_ESPECIAL = false;}
   
   
   
 depth = -y;
   
   
   
if(path_exists(path)){

P_agora = path_get_point_x(path, path_position);
P_depois =  path_get_point_x(path, path_position+1);

if(P_agora>P_depois){image_xscale=1}else{image_xscale=-1}

};
   
   
   
   
   
   
script_execute(estado);

// limite de velocidade
if(velocidadeX>limiteVelocidade){velocidadeX=limiteVelocidade};
if(velocidadeX<-limiteVelocidade){velocidadeX= -limiteVelocidade};

if(velocidadeY>limiteVelocidade){velocidadeY=limiteVelocidade};
if(velocidadeY<-limiteVelocidade){velocidadeY= -limiteVelocidade};

// Atrito do chao

if(velocidadeX>0){velocidadeX-=atrito;if(velocidadeX<0){velocidadeX=0;}}
if(velocidadeX<0){velocidadeX+=atrito;if(velocidadeX>0){velocidadeX=0;}}

if(velocidadeY>0){velocidadeY-=atrito;if(velocidadeY<0){velocidadeY=0;}}
if(velocidadeY<0){velocidadeY+=atrito;if(velocidadeY>0){velocidadeY=0;}}


//COLISAO HORIZONTAL

if(place_meeting(x+velocidadeX,y,obj_wall)){

while(!place_meeting(x+sign(velocidadeX),y,obj_wall)) {
x += sign(velocidadeX);
}

velocidadeX = 0;// velocidadeXFINAL ZERADA

}

//COLISOES VERTICAIS 

if(place_meeting(x,y+velocidadeY,obj_wall)){

while(!place_meeting(x,y+sign(velocidadeY),obj_wall)) {
y += sign(velocidadeY);
}
velocidadeY = 0;// velocidadeY ZERADA

}

//COLISOES DIAGONAIS 

if(place_meeting(x+velocidadeX,y+velocidadeY,obj_wall)){

while(!place_meeting(x+sign(velocidadeX),y+velocidadeY,obj_wall)) {

x += sign(velocidadeY);
}
velocidadeY = 0;
velocidadeX = 0;

}



 
x = velocidadeX + x;
y = velocidadeY + y; 
  


/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



// Inherit the parent event

if(instance_exists(obj_player)){


 





if(IA_modo == "perseguindo") {

sprite_index = sprite_correndo;

objetivo.mira = "player";

contViu++; 


if(contViu>temposemver){viu_o_player=false;IA_modo = "procurando";contViu=0;path_end();};
 

}else

if(IA_modo == "parado"){
	
	
	
sprite_index = sprite_parado;

objetivo.mira = "nada";
objetivo.x = x;
objetivo.y  = y;

}else

if(IA_modo == "posicaoinicial"){
	
sprite_index = sprite_correndo;

objetivo.mira = "posicaoinicial";

if(place_meeting(x,y,objetivo)){IA_modo="parado"};

}else

if(IA_modo == "procurando"){
	
sprite_index = sprite_parado;

objetivo.mira = "nada";
objetivo.x = x;
objetivo.y = y;
cont_parado=cont_parado+1;
if(cont_parado>100){IA_modo = "posicaoinicial";cont_parado=0;}

}/*else

if(IA_modo == "atirar"){
	
if(cont_atirar==0){
var tiro = instance_create_depth(x,y,depth,obj_tiro); 
tiro.dono = id;
};

//sprite_index = sprite_parado;

objetivo.mira = "nada";
objetivo.x = x;
objetivo.y = y;
 
cont_atirar++;  

if(cont_atirar>100){

IA_modo = "procurando";cont_atirar=0;

};

}
 
 
 
 */
 
 
 
 
 
 
 
 }
 
 if(place_meeting(x,y,obj_explosao)){instance_create_depth(x,y,depth,obj_inimigo_morto);instance_destroy();};