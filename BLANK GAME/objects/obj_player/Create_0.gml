event_inherited();

global.pause=false; 
global.podedarpause=true;

item = 0;

BOTAO_ESQUERDA_SETUP = ord("A");
BOTAO_DIREITA_SETUP = ord("D");
BOTAO_CIMA_SETUP = ord("W");
BOTAO_BAIXO_SETUP = ord("S");

BOTAO_PULO_SETUP = -1;
BOTAO_DASH_SETUP = -1;
BOTAO_ATAQUE_SETUP = vk_space ;
BOTAO_ATAQUE2_SETUP = -1; 
BOTAO_ESPECIAL_SETUP = -1; 

estado_parado = personagem_parado;
estado_andando = personagem_andando;
estado_correndo = personagem_correndo;

estado = personagem_parado;

velocidadeX = 0;
velocidadeY = 0;
limiteVelocidade = 4.4; 
lado = "direita";
atrito = 0.3; 