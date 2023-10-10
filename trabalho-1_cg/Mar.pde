class Mar implements Runnable {
  public void run() {
    while (true) {
      
      Operacoes operacoes;
      operacoes = new Operacoes();
      
      if(time % 3 == 0 && val1){
        t++;
   
        for (int i=0; i<100; i++) { // ter cuidado com a quantidade de pontos ao realizar o cisalhamento
         float[][] cisa = operacoes.cisalhamento(mat_mar[i][0], mat_mar[i][1], -0.0015, 0);
         mat_mar[i][0] = cisa[0][0];
         mat_mar[i][1] = cisa[1][0];
        }
        
        if(t == 20){
          val1 = false;
        }
      }if(time % 3 == 0 && !val1){
        t--;
   
        for (int i=0; i<100; i++) { // ter cuidado com a quantidade de pontos ao realizar o cisalhamento
         float[][] cisa = operacoes.cisalhamento(mat_mar[i][0], mat_mar[i][1], 0.0015, 0);
         mat_mar[i][0] = cisa[0][0];
         mat_mar[i][1] = cisa[1][0];
       }
        if(t == 0){
          val1 = true;
          time = -1;
        }
      }
      time++;
      
      if(time % 113 == 0 && val2){
        nivel--;
        for (int i=0; i<100; i++) { // ter cuidado com a quantidade de pontos ao realizar o cisalhamento
         float[][] cisa = operacoes.cisalhamento(mat_mar[i][0], mat_mar[i][1], -0.0021, 0);
         mat_mar[i][0] = cisa[0][0];
         mat_mar[i][1] = cisa[1][0];
        }
        
        if(nivel == 540){
          val2 = false;
        }
      }else if(time % 113 == 0 && !val2){
        nivel++;
        for (int i=0; i<100; i++) { // ter cuidado com a quantidade de pontos ao realizar o cisalhamento
         float[][] cisa = operacoes.cisalhamento(mat_mar[i][0], mat_mar[i][1], 0.0021, 0);
         mat_mar[i][0] = cisa[0][0];
         mat_mar[i][1] = cisa[1][0];
        }
        
        if(nivel == 600){
          val2 = true;
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
