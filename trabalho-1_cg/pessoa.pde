void corpo(int x, int y, int d){
  line(x, y-30, x, y+30);

  line(x, y+30, x+15, y+50);
  line(x, y+30, x-15, y+50);

  if(d == 0){
    line(x, y-15, x+15, y+5);
    line(x, y-15, x-15, y-35);
  }else{
    line(x, y-15, x+15, y-35);
    line(x, y-15, x-15, y+5);
  }
  
}  

void cabeca(int x, int y){
  int centerX = x+1; // Coordenada x do centro do círculo
   int centerY = y-42; // Coordenada y do centro do círculo
   int radius = 13; // Raio do círculo
  
   float angleStep = TWO_PI / 60; // Divide o círculo em 60 segmentos
  
   for (float angle = 0; angle < TWO_PI; angle += angleStep) {
     float x1 = centerX + cos(angle) * radius;
     float y1 = centerY + sin(angle) * radius;
     float x2 = centerX + cos(angle + angleStep) * radius;
     float y2 = centerY + sin(angle + angleStep) * radius;
     line(x1, y1, x2, y2);
   }
   
   point(x-4, y-43);
   point(x+4, y-43); 
}

void chapeu(int x, int y, int d){
  stroke(139, 69, 19);
  
  if(d == 0){
    line(x-15, y-60, x+25, y-40);
    for(float i = -2; i != 5.5; i+=0.25){
      line(x-7+i, y-60-i, x+18+i, y-48-i);
    }
  }else{
    line(x-17, y-38, x+20, y-58);
    for(float i = -2; i != 5.5; i+=0.25){
      line(x-13-i, y-43-i, x+10-i, y-55-i);
    }
  }
}
