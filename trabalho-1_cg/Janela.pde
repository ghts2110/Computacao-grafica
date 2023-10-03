class Janela implements Runnable {
  public void run() {
    while (true) {
      time_janela++;
      if(time_janela <= 600){
        open = true;
      }else{
        open = false;
      }
      time_janela %= 1200;
      
      try {
        Thread.sleep(15); 
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
