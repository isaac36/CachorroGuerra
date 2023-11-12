

if(global.pause==true){
	
	if(salvei==false){  
	 
	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	SaveAlarm0 = alarm[0];
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
	
	sprite_index = Save_sprite_index;
	image_index = Save_image_index;
    alarm[0] = SaveAlarm0;
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


}else{salvei=false;}





depth = -y;



if(keyboard_check(BOTAO_ESQUERDA_SETUP))and(!in_sequence){BOTAO_ESQUERDA = true;}else{BOTAO_ESQUERDA = false;}
if(keyboard_check(BOTAO_DIREITA_SETUP))and(!in_sequence){BOTAO_DIREITA = true;}else {BOTAO_DIREITA = false;}
if(keyboard_check(BOTAO_CIMA_SETUP))and(!in_sequence){BOTAO_CIMA = true;}else {BOTAO_CIMA = false;}
if(keyboard_check(BOTAO_BAIXO_SETUP))and(!in_sequence){BOTAO_BAIXO = true;}else {BOTAO_BAIXO = false;}
if(keyboard_check_pressed(BOTAO_PULO_SETUP))and(!in_sequence){BOTAO_PULO = true;}else {BOTAO_PULO = false;}
if(keyboard_check_pressed(BOTAO_DASH_SETUP))and(!in_sequence){BOTAO_DASH = true;}else {BOTAO_DASH = false;}
if(keyboard_check_pressed(BOTAO_ATAQUE_SETUP))and(!in_sequence){BOTAO_ATAQUE = true;}else {BOTAO_ATAQUE = false;}
if(keyboard_check_pressed(BOTAO_ATAQUE2_SETUP))and(!in_sequence){BOTAO_ATAQUE2 = true;}else {BOTAO_ATAQUE2 = false;}
if(keyboard_check(BOTAO_ESPECIAL_SETUP))and(!in_sequence){BOTAO_ESPECIAL = true;}else {BOTAO_ESPECIAL = false;}


if(BOTAO_PULO){instance_create_depth(x,y,depth,obj_farejar)};
 
agarrar = false;
if(medicamento==true){global.missao=6};
if(medicamento==true)and(place_meeting(x,y,obj_salvei_pessoa)){audio_play_sound(som_missao,0,0);global.missao=7;medicamento=false};
if keyboard_check(BOTAO_DASH_SETUP){agarrar = true};
 
if(agarrar==false){pegou1=false};

if(agarrar==true)and(pegou1){limiteVelocidade = 2.2}else{limiteVelocidade=4.4};
 
 
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

x += sign(velocidadeX);
y += sign(velocidadeY);
}
velocidadeY = 0;
velocidadeX = 0;
 
}



if(instance_exists(obj_farejar)){
	 
	 if(!audio_is_playing(som_farejar)){audio_play_sound(som_farejar,0,0)};
	 
	 
	 sprite_index = spr_doguinho_cheirando; velocidadeX=0;velocidadeY=0};
x = velocidadeX + x;
y = velocidadeY + y; 
  


if(morreu==false)and(place_meeting(x,y,obj_cachorro_inimigo))or(place_meeting(x,y,obj_explosao)){morreu=true;alarm[10]=5};