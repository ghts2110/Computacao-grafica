class Nuvem implements Runnable {
  Operacoes operacoes;
  
  public void run() {
    operacoes = new Operacoes();
    while (true) {
      for(int i = 0; i < 4; i++){
      quadrado[i][0] += 50;
      if(quadrado[i][0] > 600){
        operacoes.reflexaoX(quadrado);
      }
      }
      float[][] resultado;
      for(int i=0; i<4; i++){
          resultado = operacoes.translacao(quadrado[i][0], quadrado[i][1], 1.2, 0);
          quadrado[i][0] = resultado[0][0];
          quadrado[i][1] = resultado[1][0];
          
          if(quadrado[i][0] > 600){
             operacoes.reflexaoX(quadrado);
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
