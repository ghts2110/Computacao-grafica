void grama(){
  stroke(34, 139, 34);
  for(int i= 500;i != 600; i++){
    line(0, i, 420, i);
  }
}
void areia(){
  stroke(194, 178, 128);
  for(int i= 500;i != 600; i++){
    line(420, i, 600, i);
  }
}

void mar(int nivel, int t){
  stroke(0, 0, 128);
  for(int i = 0; i != 100; i++){
    line(mat_mar[i][0], mat_mar[i][1], mat_mar[100+i][0], mat_mar[100+i][1]);
  }
  
}

void arvore(){
  stroke(139, 69, 19);
  for(int i = 300; i != 540; i++){
    line(40, i, 70, i);
  }
  
  stroke(0, 100, 0);
  for(int i = 10; i <= 100; i++){
    line(55, 320, i, 405);
  }
  
  for(int i = 15; i <= 95; i++){
    line(55, 280, i, 375);
  }
  
  for(int i = 20; i <= 90; i++){
    line(55, 240, i, 345);
  }
}

void start_mar(){
  for(int i = 0; i != 100; i++){
    mat_mar[i][0] = 500+i;
    mat_mar[i][1] = 500+i;
    
    mat_mar[i+100][0] = 600;
    mat_mar[i+100][1] = 500+i;
  }
}
