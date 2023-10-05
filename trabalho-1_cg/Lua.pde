class Lua implements Runnable {
  public void run() {
    while (true) {
      if(mat_lua[0] <= 660){
        mat_lua[0]+=1.2;
        
        if(time_luz % 4 == 0 && mat_lua[0] <= 300){
           r--;
           g--;
           b--; 
         }else if(time_luz  % 4 == 0){
           r++;
           g++;
           b++;
         }
        if(mat_lua[0] > 659){
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
