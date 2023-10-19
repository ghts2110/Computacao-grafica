
class Nuvem implements Runnable {
  Operacoes operacoes;
  
  public void run() {
    operacoes = new Operacoes();
    while (true) {
      
      float[][] resultado;
      for(int i=0; i<4; i++){
          resultado = operacoes.translacao(quadrado[i][0], quadrado[i][1], 2, 0);
          quadrado[i][0] = resultado[0][0];
          quadrado[i][1] = resultado[1][0];
          
          resultado = operacoes.escala(quadrado[i][0], quadrado[i][1], 1.002, 1.002); // Deixei maior para ficar visivel
          quadrado[i][0] = resultado[0][0];
          quadrado[i][1] = resultado[1][0];
      }
      
      if(quadrado[2][0] > 599){
          quadrado = operacoes.reflexaoX(quadrado);
    for (int i = 0; i < 4; i++) {
        quadrado[i][1] = -quadrado[i][1];
        
        double fatorEscalaY = 1.8;
        quadrado[i][0] /= fatorEscalaY;
        quadrado[i][1] /= fatorEscalaY;
    }
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
