class Mar implements Runnable {
  public void run() {
    while (true) {
      if(time % 3 == 0 && val1){
        t++;
        if(t == 20){
          val1 = false;
        }
      }if(time % 3 == 0 && !val1){
        t--;
        if(t == 0){
          val1 = true;
          time = -1;
        }
      }
      time++;
      
      if(time % 113 == 0 && val2){
        nivel--;
        if(nivel == 540){
          val2 = false;
        }
      }else if(time % 113 == 0 && !val2){
        nivel++;
        if(nivel == 600){
          val2 = true;
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
