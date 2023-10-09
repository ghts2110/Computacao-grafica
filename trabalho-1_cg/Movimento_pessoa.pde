class Movimento_pessoa implements Runnable {
  public void run() {
    while (true) {
      if(mat_sol[0][0] < 600 && mat_sol[0][0] > 0){
        if(mat_sol[0][0] < 300 && mat_pessoa[0][0] > 85){
          d = 0;
          Operacoes operacoes;
          operacoes = new Operacoes();
          float[][] resultado;
          for(int i=0; i<39; i++){
            resultado = operacoes.translacao(mat_pessoa[i][0], mat_pessoa[i][1], -1, 0);
            mat_pessoa[i][0] = resultado[0][0];
            mat_pessoa[i][1] = resultado[1][0];
          }
          
        }else if(mat_sol[0][0] > 392){
          d = 1;
          Operacoes operacoes;
          operacoes = new Operacoes();
          float[][] resultado;
          for(int i=0; i<39; i++){
            resultado = operacoes.translacao(mat_pessoa[i][0], mat_pessoa[i][1], 0.85, 0);
            mat_pessoa[i][0] = resultado[0][0];
            mat_pessoa[i][1] = resultado[1][0];
          }
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
