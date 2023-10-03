class Movimento_pessoa implements Runnable {
  public void run() {
    while (true) {
      if(dist_sol < 600 && dist_sol > 0){
        if(dist_sol < 300 && x > 85){
          d = 0;
          x--;
        }else if(dist_sol > 392){
          d = 1;
          x++;
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
