float dist_sol = -60;
int numRaios = 600; // Número de raios do sol
float raioExterno = 50; // Raio externo do sol
 float raioInterno = 0; // Raio interno do sol
    
class Sol implements Runnable {
  public void run() {
    while (true) {
     if(dist_sol <= 660){
     dist_sol+=1.2;
     
     if(time_luz  % 3 == 0 && dist_sol <= 300){
       r++;
       g++;
       b++; 
     }else if(time_luz  % 3 == 0){
       r--;
       g--;
       b--;
     }
     
    
    
    stroke(255, 204, 0);
    for (int i = 0; i < numRaios; i++) {
      float angulo = TWO_PI / numRaios * i;
      float x1 = cos(angulo) * raioExterno + dist;
      float y1 = sin(angulo) * raioExterno + 100;
      float x2 = cos(angulo) * raioInterno + dist;
      float y2 = sin(angulo) * raioInterno + 100;
      line(x1, y1, x2, y2);
    }
     
     if(dist_sol > 659){
       fase_lua++;
       fase_lua %= 6;
       dist_lua = -60;
     }
    }
      redraw();
      
      try {
        Thread.sleep(50); // Espera por 50 milissegundos antes de mover o sol novamente
      } catch (InterruptedException e) {
        e.printStackTrace();
      }
    }
  }
}
