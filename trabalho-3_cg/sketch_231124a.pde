import java.util.ArrayList; 

int x1 = 0, y1 = 600, x2 = 0, y2 = 600;
ArrayList<Integer> v = new ArrayList<>();

Thread k = new Thread(new Key());

void setup(){
  size(600, 600);
  
  noLoop();
  
  k.start();
}

void draw(){
  background(255);
  
  stroke(0, 0, 0);
  Pintar();
  Grade();

  stroke(255, 0, 0);
  line(x1, y1, x2, y2);
}
