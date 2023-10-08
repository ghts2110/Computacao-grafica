class Sol implements Runnable {
  public void run() {
    while (true) {
      time_luz++;
      if(mat_sol[0][0] <= 660){
        Operacoes operacoes;
        operacoes = new Operacoes();
        float[][] resultado;
        for(int i=0; i<13; i++){
          resultado = operacoes.translacao(mat_sol[i][0], mat_sol[i][1], 1.2, 0);
          mat_sol[i][0] = resultado[0][0];
          mat_sol[i][1] = resultado[1][0];
        }
         
         if(time_luz  % 3 == 0 && mat_sol[0][0] <= 300){
           r++;
           g++;
           b++; 
         }else if(time_luz  % 3 == 0){
           r--;
           g--;
           b--;
         }

         if(mat_sol[0][0] > 659){
           fase_lua++;
           fase_lua %= 6;
           
           mat_lua[0][0] = -60;
           mat_lua[1][0] = -65;
           mat_lua[2][0] = -65;
           mat_lua[3][0] = -80;
           mat_lua[4][0] = -80;
           mat_lua[5][0] = -95;
           mat_lua[6][0] = -95;
           mat_lua[7][0] = -100;
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
