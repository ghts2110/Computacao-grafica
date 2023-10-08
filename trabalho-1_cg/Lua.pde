class Lua implements Runnable {
  public void run() {
    while (true) {
      if(mat_lua[0][0] <= 660){
        Operacoes operacoes;
        operacoes = new Operacoes();
        float[][] resultado;
        for(int i=0; i<8; i++){
          resultado = operacoes.translacao(mat_lua[i][0], mat_lua[i][1], 1.2, 0);
          mat_lua[i][0] = resultado[0][0];
          mat_lua[i][1] = resultado[1][0];
        }
        
        
        if(time_luz % 4 == 0 && mat_lua[0][0] <= 300){
           r--;
           g--;
           b--; 
         }else if(time_luz  % 4 == 0){
           r++;
           g++;
           b++;
         }
        if(mat_lua[0][0] > 659){
          mat_sol[0] = -60;
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
