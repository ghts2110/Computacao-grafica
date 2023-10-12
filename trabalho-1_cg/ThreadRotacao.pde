class ThreadRotacao extends Thread {
  float[][] quadrado; // Matriz para armazenar os pontos do quadrado
  float centerX = 300;
  float centerY = 300;
  float side = 10;
  float angle = 0; // Ângulo de rotação inicial
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
    stroke(0);
    for (int i = 0; i < 4; i++) {
      int next = (i + 1) % 4;
      line(quadrado[i][0], quadrado[i][1], quadrado[next][0], quadrado[next][1]);
    }
  }

  public void run() {
    while (true) {

      for (int i = 0; i < 4; i++) {
        float[][] resultado = operacoes.rotacao(quadrado[i][0] - centerX, quadrado[i][1] - centerY, radians(1)); 
        quadrado[i] = new float[]{resultado[0][0] + centerX, resultado[1][0] + centerY};
      }
      redraw(); 
      delay(16); 
    }
  }
}
