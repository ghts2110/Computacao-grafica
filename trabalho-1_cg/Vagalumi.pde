class Vagalumi implements Runnable {
  public void run() {
    while (true) {
      mat_vagalume[0] = 100 * cos(angulo_vagalume) - 100 * sin(angulo_vagalume);
      mat_vagalume[0] += 290;
      mat_vagalume[1] = 100 * cos(angulo_vagalume) + 100 * sin(angulo_vagalume);
      mat_vagalume[1] += 280;
      
      
      mat_vagalume[2] = 50 * cos(angulo_vagalume) - 300 * sin(angulo_vagalume);
      mat_vagalume[2] += 290;
      mat_vagalume[3] = 300 * cos(angulo_vagalume+200) + 50 * sin(angulo_vagalume+200);
      mat_vagalume[3] += 280;
      
      mat_vagalume[4] = 150 * cos(angulo_vagalume+100) - 200 * sin(angulo_vagalume+100);
      mat_vagalume[4] += 290;
      mat_vagalume[5] = 200 * cos(angulo_vagalume) + 150 * sin(angulo_vagalume);
      mat_vagalume[5] += 280;
      angulo_vagalume += 0.015;
      
      mat_vagalume[6] = 150 * cos(angulo_vagalume+150) - 200 * sin(angulo_vagalume+150);
      mat_vagalume[6] += 290;
      mat_vagalume[7] = 200 * cos(angulo_vagalume+150) + 150 * sin(angulo_vagalume+150);
      mat_vagalume[7] += 280;
      
      angulo_vagalume += 0.005;
      redraw();
      
      try {
        Thread.sleep(15); 
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
