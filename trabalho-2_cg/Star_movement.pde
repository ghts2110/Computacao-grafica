class Star_movement implements Runnable {
  PVector p1 = new PVector(210,270);
  PVector p2 = new PVector(190,300);
  PVector p3 = new PVector(210,335);
  PVector p4 = new PVector(250,350);
  PVector p5 = new PVector(280,340);
  PVector p6 = new PVector(290,300);
  PVector p7 = new PVector(280,260);
  PVector p8 = new PVector(310,200);
  PVector p9 = new PVector(340,170);
  PVector p10 = new PVector(370,145);
  PVector p11= new PVector(445,150);
  PVector p12 = new PVector(420,120);
  PVector p13 = new PVector(400,100);
  PVector p[] = {p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13};
  public void run() {
    while (true) {
      b = true;
      for(int i = 0; i < p.length; i++){
         if((int)v[i].x < p[i].x){
             v[i].x += 0.5;
             b = false;
         }else if((int) v[i].x > p[i].x){
            v[i].x -= 0.5;
            b= false;
         }
         
         if((int)v[i].y < p[i].y){
           v[i].y+=0.5;
           b = false;
         }else if ((int)v[i].y > p[i].y){
           v[i].y-=0.5;
           b = false;
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
