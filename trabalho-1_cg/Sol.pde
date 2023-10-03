class Sol implements Runnable {
  public void run() {
    while (true) {
      time_luz++;
      if(dist_sol <= 660){
         dist_sol+=1.2;
         
         if(time_luz  % 3 == 0 && dist_sol <= 300){
           r++;
           g++;
           b++; 
         }else if(time_luz  % 3 == 0){
           r--;
           g--;
           b--;
         }
         
         
         
         if(dist_sol > 659){
           fase_lua++;
           fase_lua %= 6;
           dist_lua = -60;
         }
      }
      redraw();
      
      try {
        Thread.sleep(15); // Espera por 50 milissegundos antes de mover o sol novamente
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
