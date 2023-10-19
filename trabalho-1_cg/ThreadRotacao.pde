// made in celin do gera

class ThreadRotacao extends Thread {
  float[][] quadrado; 

  float centerX = 10;
  float centerY = 200;
  float side = 100;
  float angle = 0; 
  Operacoes operacoes;

  ThreadRotacao() {
    quadrado = new float[4][2]; 

    operacoes = new Operacoes();
    
    quadrado[0][0] = centerX - side / 2;
    quadrado[0][1] = centerY - side / 2;
    quadrado[1][0] = centerX + side / 2;
    quadrado[1][1] = centerY - side / 2;
    quadrado[2][0] = centerX + side / 2;
    quadrado[2][1] = centerY + side / 2;
    quadrado[3][0] = centerX - side / 2;
    quadrado[3][1] = centerY + side / 2;
    
    
  
  }

  void desenharQuadrado() {
    
    stroke(255, 10, 10);
    for (int i = 0; i < 4; i++) {
      line(quadrado[i][0], quadrado[i][1], quadrado[(i + 1) % 4][0], quadrado[(i + 1) % 4][1]);
    }
    
   
  }

  public void run() {
    while (true) {

      for (int i = 0; i < 4; i++) {
        float[][] resultado = operacoes.rotacao(quadrado[i][0] - centerX, quadrado[i][1] - centerY, radians(1)); 
        quadrado[i][0] = resultado[0][0] + centerX;
        quadrado[i][1] = resultado[1][0] + centerY;
      }
      redraw();
      try {
        Thread.sleep(15); 
      } catch (InterruptedException e) {
        e.printStackTrace();
      } 
    }
  }
}
