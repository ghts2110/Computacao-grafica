class Fumaca_chamine implements Runnable {
  public void run() {
    while (true) {
      time_chamine++;
      if(time_chamine % 7 == 0){
        cont_chamine++;
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
