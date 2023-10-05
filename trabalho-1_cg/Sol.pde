class Sol implements Runnable {
  public void run() {
    while (true) {
      time_luz++;
      if(mat_sol[0] <= 660){
         mat_sol[0]+=1.2;
         
         if(time_luz  % 3 == 0 && mat_sol[0] <= 300){
           r++;
           g++;
           b++; 
         }else if(time_luz  % 3 == 0){
           r--;
           g--;
           b--;
         }

         if(mat_sol[0] > 659){
           fase_lua++;
           fase_lua %= 6;
           mat_lua[0] = -60;
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
