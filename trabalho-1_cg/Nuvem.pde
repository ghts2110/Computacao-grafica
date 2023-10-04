class Nuvem implements Runnable {
  public void run() {
    while (true) {
      x_nuvem += vel;
      if (x_nuvem > width + tamanho) {
      x_nuvem = -(tamanho);
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
