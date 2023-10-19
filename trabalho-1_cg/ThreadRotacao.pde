class ThreadRotacao extends Thread {
  float[][] pentagrama; 

  float centerX = 20;
  float centerY = 200;
  float radius = 100;
  float angle = 0;
  Operacoes operacoes;

  ThreadRotacao() {
    pentagrama = new float[5][2]; 

    operacoes = new Operacoes();
    
    for (int i = 0; i < 5; i++) {
      float x = centerX + radius * cos(TWO_PI / 5 * i);
      float y = centerY + radius * sin(TWO_PI / 5 * i);
      pentagrama[i][0] = x;
      pentagrama[i][1] = y;
    }
  }

  void desenharPentagrama() {
    stroke(255, 10, 10);
    for (int i = 0; i < 5; i++) {
      line(pentagrama[i][0], pentagrama[i][1], pentagrama[(i + 2) % 5][0], pentagrama[(i + 2) % 5][1]);
    }
  }

  public void run() {
    while (true) {
      for (int i = 0; i < 5; i++) {
        float[][] resultado = operacoes.rotacao(pentagrama[i][0] - centerX, pentagrama[i][1] - centerY, radians(1)); 
        pentagrama[i][0] = resultado[0][0] + centerX;
        pentagrama[i][1] = resultado[1][0] + centerY;
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
