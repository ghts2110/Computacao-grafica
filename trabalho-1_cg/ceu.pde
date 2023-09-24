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

void lua(float dist){
  int numRaios = 255; // Número de raios do sol
  float raioExterno = 40; // Raio externo do sol
  float raioInterno = 0; // Raio interno do sol
  
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

void luz(){
  
}
