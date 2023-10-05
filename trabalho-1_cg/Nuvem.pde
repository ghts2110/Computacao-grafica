class Nuvem implements Runnable {
  public void run() {
    while (true) {
      
      redraw();
      
      try {
        Thread.sleep(15); 
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
