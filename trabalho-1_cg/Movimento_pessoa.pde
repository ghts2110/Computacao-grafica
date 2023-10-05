class Movimento_pessoa implements Runnable {
  public void run() {
    while (true) {
      if(mat_sol[0] < 600 && mat_sol[0] > 0){
        int[] mat_sum = {1, 0};

        if(mat_sol[0] < 300 && mat_pessoa[0][0] > 85){
          d = 0;
          for(int i = 0; i != 23; i++){
            mat_pessoa[i][0] -= mat_sum[0];
            mat_pessoa[i][1] -= mat_sum[1];
          }
          
        }else if(mat_sol[0] > 392){
          d = 1;
          for(int i = 0; i != 23; i++){
            mat_pessoa[i][0] += mat_sum[0];
            mat_pessoa[i][1] += mat_sum[1];
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
