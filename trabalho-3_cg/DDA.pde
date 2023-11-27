ArrayList<Integer> DDA(){
  ArrayList<Integer> v2 = new ArrayList<>();

  float step = max(abs(x1-x2), abs(y1-y2));
  
  if(step == 0){
    return v2;
  }
  
  float Xinc = abs(x1-x2)/step;
  float Yinc = abs(y1-y2)/step;
  
  float X = x1;
  float Y = y1;
  
  int ndx = 0; //<>//
  while(X < x2){
    v2.add(ndx, round(X));
    ndx++;
    
    v2.add(ndx, round(Y));
    ndx++;  
  
    X += Xinc*60;
    Y -= Yinc*60;
  }
  
  
  return v2;
}
