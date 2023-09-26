void sol(float dist){  
  int numRaios = 315; // Número de raios do sol
  float raioExterno = 50; // Raio externo do sol
  float raioInterno = 0; // Raio interno do sol
  
  stroke(255, 204, 0);
  for (int i = 0; i < numRaios; i++) {
    float angulo = TWO_PI / numRaios * i;
    float x1 = cos(angulo) * raioExterno + dist;
    float y1 = sin(angulo) * raioExterno + 100;
    float x2 = cos(angulo) * raioInterno + dist;
    float y2 = sin(angulo) * raioInterno + 100;
    line(x1, y1, x2, y2);
  }
}

void lua(float dist, int fase_lua, int r, int g, int b){
  int numRaios = 255; // Número de raios do sol
  float raioExterno = 40; // Raio externo do sol
  float raioInterno = 0; // Raio interno do sol
    
  if(fase_lua != 5){   
    stroke(255);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1, y1, x2, y2);
    }
  }
  
  if(fase_lua == 0){
    numRaios = 255; // Número de raios do sol
    raioExterno = 35; // Raio externo do sol
    raioInterno = 0; // Raio interno do sol
    
    stroke(r, g, b);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1+5, y1, x2+5, y2);
    }
  }else if(fase_lua == 1){
    numRaios = 255; // Número de raios do sol
    raioExterno = 25; // Raio externo do sol
    raioInterno = 0; // Raio interno do sol
    
    stroke(r, g, b);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1+15, y1, x2+5, y2);
    }
  }else if(fase_lua == 3){
    numRaios = 255; // Número de raios do sol
    raioExterno = 25; // Raio externo do sol
    raioInterno = 0; // Raio interno do sol
    
    stroke(r, g, b);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1-15, y1, x2+5, y2);
    }
  }else if(fase_lua == 4){
    numRaios = 255; // Número de raios do sol
    raioExterno = 35; // Raio externo do sol
    raioInterno = 0; // Raio interno do sol
    
    stroke(r, g, b);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1-5, y1, x2+5, y2);
    }
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
    
    line(x+50, y, x+5+50, y - 10);   
    line(x+50, y, x-5+50, y - 10);
    line(x+50 - 15, y - 10, x-5+50, y - 10);
    line(x+15+50, y-10, x+5+50, y - 10);
    
    line(x+25, y+50, x+5+25, y-10+50);   
    line(x+25, y+50, x-5+25, y-10+50);
    line(x+25-15, y-10+50, x-5+25, y-10+50);
    line(x+15+25, y-10+50, x+5+25, y-10+50); 
    
    line(x+25, y-50, x+5+25, y-10-50);   
    line(x+25, y-50, x-5+25, y-10-50);
    line(x+25-15, y-10-50, x-5+25, y-10-50);
    line(x+15+25, y-10-50, x+5+25, y-10-50); 
    
    line(x+60, y-55, x+5+60, y-10-55);   
    line(x+60, y-55, x-5+60, y-10-55);
    line(x+60-15, y-10-55, x-5+60, y-10-55);
    line(x+15+60, y-10-55, x+5+60, y-10-55);
    
    line(x+10, y-80, x+5+10, y-10-80);   
    line(x+10, y-80, x-5+10, y-10-80);
    line(x+10-15, y-10-80, x-5+10, y-10-80);
    line(x+15+10, y-10-80, x+5+10, y-10-80);
    
    angle += speed;  // Incrementa o ângulo para fazer o ponto se mover em círculos
}
  
  
