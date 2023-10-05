class Movimento_pessoa implements Runnable {
  public void run() {
    while (true) {
      if(dist_sol < 600 && dist_sol > 0){
        if(dist_sol < 300 && mat_pessoa[0][0] > 85){
          d = 0;
          for(int i = 0; i != 23; i++){
            mat_pessoa[i][0]--;
          }
          
        }else if(dist_sol > 392){
          d = 1;
          for(int i = 0; i != 23; i++){
            mat_pessoa[i][0]++;
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
