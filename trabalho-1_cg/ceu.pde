void sol(){  
  int numRaios = 600; // Número de raios do sol
  float raioExterno = 50; // Raio externo do sol
  float raioInterno = 0; // Raio interno do sol
  
  stroke(255, 204, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + mat_sol[0];
    float y1 = sin(angulo) * raioExterno + mat_sol[1];
    float x2 = cos(angulo) * raioInterno + mat_sol[0];
    float y2 = sin(angulo) * raioInterno + mat_sol[1];
    line(x1, y1, x2, y2);
  }
}

void lua(int fase_lua){
  stroke(255);
  if(fase_lua == 0){
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[6][0], mat_lua[6][1], mat_lua[7][0], mat_lua[7][1]);
  }else if(fase_lua == 1){
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[6][0], mat_lua[6][1], mat_lua[7][0], mat_lua[7][1]);
  }else if(fase_lua == 2){
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[1][0], mat_lua[1][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[6][0], mat_lua[6][1]);
    line(mat_lua[5][0], mat_lua[5][1], mat_lua[7][0], mat_lua[7][1]);
    
    line(mat_lua[6][0], mat_lua[6][1], mat_lua[7][0], mat_lua[7][1]);
  }else if(fase_lua == 3){
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[1][0], mat_lua[1][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[6][0], mat_lua[6][1]);
    
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[6][0], mat_lua[6][1]);
    
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[6][0], mat_lua[6][1]);
    
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[5][0], mat_lua[5][1]);
    
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[6][0], mat_lua[6][1]);
  }else if(fase_lua == 4){
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[1][0], mat_lua[1][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[5][0], mat_lua[5][1]);
    line(mat_lua[0][0], mat_lua[0][1], mat_lua[6][0], mat_lua[6][1]);
    
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[2][0], mat_lua[2][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[1][0], mat_lua[1][1], mat_lua[5][0], mat_lua[5][1]);
    
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[3][0], mat_lua[3][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[4][0], mat_lua[4][1]);
    line(mat_lua[2][0], mat_lua[2][1], mat_lua[6][0], mat_lua[6][1]);
    
    line(mat_lua[3][0], mat_lua[3][1], mat_lua[5][0], mat_lua[5][1]);
    
    line(mat_lua[4][0], mat_lua[4][1], mat_lua[6][0], mat_lua[6][1]);
  }
  
}

void passaro(double dp[]){
    
    if(radius < 0){
      validate_volta = false;
      time_passaro = 2;
    }else if(radius > 250){
      validate_volta = true;
      time_passaro = 2;
    }
    
    if(validate_volta){
        time_passaro++;
        radius -= (dp[time_passaro]/dp[time_passaro-1])-1;
    }else{
      time_passaro++;
      radius += (dp[time_passaro]/dp[time_passaro-1])-1;
    }
    
    float x = centerX + cos(angle) * radius;
    float y = centerY + sin(angle) * radius;
    
    stroke(0);
    line(x, y, x+5, y - 10);   
    line(x, y, x-5, y - 10);
    line(x - 15, y - 10, x-5, y - 10);
    line(x+15, y-10, x+5, y - 10); 
    
    line(x-300, y, x-300+5, y - 10);   
    line(x-300, y, x-300-5, y - 10);
    line(x-300 - 15, y - 10, x-300-5, y - 10);
    line(x-300+15, y-10, x-300+5, y - 10);
    
    line(x+25, y-300, x+5+25, y-300-10);   
    line(x+25, y-300, x-5+25, y-300-10);
    line(x+25-15, y-300-10, x-5+25, y-300-10);
    line(x+15+25, y-300-10, x+5+25, y-300-10); 
    
    line(x-250, y-250, x-250+5, y-250-10);   
    line(x-250, y-250, x-250-5, y-250-10);
    line(x-250-15, y-250-10, x-250-5, y-250-10);
    line(x-250+15, y-250-10, x-250+5, y-250-10); 
    
    line(x+100, y-155, x+100+5, y-155-10);   
    line(x+100, y-155, x+100-5, y-155-10);
    line(x+100-15, y-155-10, x+100-5, y-155-10);
    line(x+100+15, y-155-10, x+100+5, y-155-10);
    
    line(x-70, y-80, x-70+5, y-10-80);   
    line(x-70, y-80, x-70-5, y-10-80);
    line(x-70-15, y-10-80, x-70-5, y-10-80);
    line(x-70+15, y-10-80, x-70+5, y-10-80);
    
    angle += speed;  // Incrementa o ângulo para fazer o ponto se mover em círculos
}

void nuvem(float x_nuvem, float y_nuvem){
  
}
  
void vagalume(){
  int numRaios = 10; // Número de raios do sol
  float raioExterno = 1; // Raio externo do sol
  float raioInterno = 0; // Raio interno do sol
  
  stroke(0, 255, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + mat_vagalume[0];
    float y1 = sin(angulo) * raioExterno + mat_vagalume[1];
    float x2 = cos(angulo) * raioInterno + mat_vagalume[0];
    float y2 = sin(angulo) * raioInterno + mat_vagalume[1];
    line(x1, y1, x2, y2);
  }
 
  stroke(0, 255, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + mat_vagalume[2];
    float y1 = sin(angulo) * raioExterno + mat_vagalume[3];
    float x2 = cos(angulo) * raioInterno + mat_vagalume[2];
    float y2 = sin(angulo) * raioInterno + mat_vagalume[3];
    line(x1, y1, x2, y2);
  }
  
  stroke(0, 255, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + mat_vagalume[4];
    float y1 = sin(angulo) * raioExterno + mat_vagalume[5];
    float x2 = cos(angulo) * raioInterno + mat_vagalume[4];
    float y2 = sin(angulo) * raioInterno + mat_vagalume[5];
    line(x1, y1, x2, y2);
  }
  
  stroke(0, 255, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + mat_vagalume[6];
    float y1 = sin(angulo) * raioExterno + mat_vagalume[7];
    float x2 = cos(angulo) * raioInterno + mat_vagalume[6];
    float y2 = sin(angulo) * raioInterno + mat_vagalume[7];
    line(x1, y1, x2, y2);
  }
}

void ls(){
  mat_sol[0] = -60;
  mat_sol[1] = 100;
  
  mat_lua[0][0] = 670;
  mat_lua[0][1] = 100;
  mat_lua[1][0] = 655;
  mat_lua[1][1] = 75;
  mat_lua[2][0] = 655;
  mat_lua[2][1] = 125;
  mat_lua[3][0] = 630;
  mat_lua[3][1] = 60;
  mat_lua[4][0] = 630;
  mat_lua[4][1] = 140;
  mat_lua[5][0] = 605;
  mat_lua[5][1] = 75;
  mat_lua[6][0] = 605;
  mat_lua[6][1] = 125;
  mat_lua[7][0] = 595;
  mat_lua[7][1] = 100;
}

void vm(){
  mat_vagalume[0] = 100;
  mat_vagalume[1] = 100;
  
  mat_vagalume[2] = 100;
  mat_vagalume[3] = 100;
  
  mat_vagalume[4] = 100;
  mat_vagalume[5] = 100;
  
  mat_vagalume[6] = 100;
  mat_vagalume[7] = 100;
}
  
