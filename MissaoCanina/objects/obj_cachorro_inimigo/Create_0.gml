 
  /// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();


//pause
salvei=false; 
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
 //
	
	
	
	
	
	
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
 
cont_atirar = 0;

