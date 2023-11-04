
 event_inherited();

mask_index = spr_doguinho;
sprite_parado = spr_doguinho;
sprite_andando = spr_doguinho_andando;

global.pause=false; 
global.podedarpause=true;

morreu = false;
item = 0;
medicamento = false;
agarrar = false;
pegou1 = false;

BOTAO_ESQUERDA_SETUP = ord("A");
BOTAO_DIREITA_SETUP = ord("D");
BOTAO_CIMA_SETUP = ord("W");
BOTAO_BAIXO_SETUP = ord("S");

BOTAO_PULO_SETUP = ord("U");
BOTAO_DASH_SETUP = ord("I");
BOTAO_ATAQUE_SETUP = vk_space ;
BOTAO_ATAQUE2_SETUP = -1; 
BOTAO_ESPECIAL_SETUP = -1; 

estado_parado = personagem_parado;
estado_andando = personagem_andando;
estado_correndo = personagem_correndo;
estado_animacao1 = personagem_mortal;

estado = personagem_parado;

cont = 0;

velocidadeX = 0;
velocidadeY = 0;
limiteVelocidade = 4.4; 
lado = "direita";
atrito = 0.3; 





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
