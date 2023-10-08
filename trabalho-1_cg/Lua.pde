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
          mat_sol[0][0] = -60;
          mat_sol[1][0] = -65;
          mat_sol[2][0] = -65;
          mat_sol[3][0] = -80;
          mat_sol[4][0] = -80;
          mat_sol[5][0] = -95;
          mat_sol[6][0] = -95;
          mat_sol[7][0] = -110;
          mat_sol[8][0] = -110;
          mat_sol[9][0] = -125;
          mat_sol[10][0] = -125;
          mat_sol[11][0] = -130;
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
