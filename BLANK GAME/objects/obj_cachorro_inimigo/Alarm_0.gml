/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

  
//update






path_delete(path);


path = path_add();



 
//onde vamos

target_x = objetivo.x;
target_y = objetivo.y;


//usando a grid  do cenario
mp_grid_path(obj_grid.grid,path,x,y,target_x,target_y,1);



path_start(path,4,path_action_stop,true); 




  

//loop

alarm_set(0,60);
  
