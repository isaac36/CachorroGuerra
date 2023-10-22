 /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();

sprite_parado = spr_inimigo_parado;
sprite_correndo = spr_inimigo_correndo;

BOTAO_ESQUERDA_SETUP = -1;
BOTAO_DIREITA_SETUP = -1;
BOTAO_CIMA_SETUP = -1;
BOTAO_BAIXO_SETUP = -1;

BOTAO_PULO_SETUP = -1;
BOTAO_DASH_SETUP = -1;
BOTAO_ATAQUE_SETUP = -1;
BOTAO_ATAQUE2_SETUP = -1; 
BOTAO_ESPECIAL_SETUP = -1; 

estado_parado = personagem_parado;
estado_andando = personagem_andando;
estado_correndo = personagem_correndo;
 
estado = personagem_parado;

velocidadeX = 0;
velocidadeY = 0;
limiteVelocidade = 3.6; 
lado = "direita";
atrito = 0.3;








//IA

posicaoinicialX = x;
posicaoinicialY = y;
viu_o_player = false;
temposemver = 400;
contViu = 0;
cont_parado=0;
IA_modo = "posicaoinicial";  






//IA PATH

 randomize();

global.lista = ds_list_create();
 
global.mostrar = false;
 
//estado=esperar;
pegueicomida = false;


path = path_add(); 

objetivo = instance_create_depth(x,y,depth,obj_objetivo);
objetivo.dono = id;

target_x = objetivo.x;
target_y = objetivo.y;

alarm[0] = 1;
alarm[1] = 1;

caminho=-1;
 
    
