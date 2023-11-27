class Key implements Runnable {
  public void run() {
    while (true) {
      if(keyPressed){
        if(key == 'w'){
          y2 -= 60;
          if(y2 < 0){
            y2 = 0;
          }
        }else if(key == 's'){
          y2 += 60;
          if(y2 > 600){
            y2 = 600;
          }
        }else if(key == 'a'){
          x2 -= 60;
          if(x2 < 0){
            x2 = 0;
          }
        }else if(key == 'd'){
          x2 += 60;
          if(x2 > 600){
            x2 = 600;
          }   
        }else  if(key == 'i'){
          y1 -= 60;
          if(y1 < 0){
            y1 = 0;
          }
        }else if(key == 'k'){
          y1 += 60;
          if(y1 > 600){
            y1 = 600;
          }
        }else if(key == 'j'){
          x1 -= 60;
          if(x1 < 0){
            x1 = 0;
          }
        }else if(key == 'l'){
          x1 += 60;
          if(x1 > 600){
            x1 = 600;
          }   
        }       

        v.clear();
        v = DDA();
        
        println(v);
        delay(250);
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
