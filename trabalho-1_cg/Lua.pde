class Lua implements Runnable {
  public void run() {
    while (true) {
      if(dist_lua <= 660){
        dist_lua+=1.2;
        
        if(time_luz % 4 == 0 && dist_lua <= 300){
           r--;
           g--;
           b--; 
         }else if(time_luz  % 4 == 0){
           r++;
           g++;
           b++;
         }
        if(dist_lua > 659){
          dist_sol = -60;
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
