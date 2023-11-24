void setup(){
  size(600, 600);
  noLoop();
}

void draw(){
  strokeWeight(15);
  point(400, 100);
  point(380, 80);
  point(320, 90);
  point(310, 170);
  point(355, 190);
  point(370, 260);
  point(250, 230);
  point(200, 245);
  point(250, 195);
  
   strokeWeight(10);
  line(400, 100, 380, 80);
  line(320, 90, 380, 80);
  line(320, 90, 310, 170);
  line(355, 190, 310, 170);
  line(355, 190, 370, 260);
  line(250, 230, 370, 260);
  line(250, 230, 200, 245);
  line(250, 195, 200, 245);
  line(250, 195, 310, 170);
}
