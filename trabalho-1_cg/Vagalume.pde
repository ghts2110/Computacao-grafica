class Vagalumi implements Runnable {
  public void run() {
    while (true) {
      rotatedX_vagalumi = centerX_vagalumi + (rotatingX_vagalumi - centerX_vagalumi) * cos(angle) - (rotatingY_vagalumi - centerY_vagalumi) * sin(angle);
      rotatedY_vagalumi = centerY_vagalumi + (rotatingX_vagalumi - centerX_vagalumi) * sin(angle) + (rotatingY_vagalumi - centerY_vagalumi) * cos(angle);
      redraw();
      
      try {
        Thread.sleep(15); 
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
