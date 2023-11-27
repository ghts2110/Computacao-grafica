void Grade(){
  for(int i = 60; i != 600; i+=60){
    line(i, 0, i, 600);
    line(0, i, 600, i);
  }
}

int dmp(int x){
  if(x%60 < 60 - (x%60)){
    return x - (x%60);
  }
  
  return x + 60 - (x%60);
}

void Pintar(){
  int sz = v.size();
  
  for(int i = 0; i < sz; i+=2){
    int d1 =  dmp(v.get(i));
    int d2 = dmp(v.get(i+1));
    
    for(int j = d1; j != d1 + 60; j++){
      stroke(0, 0, 255);
      line(j, d2, j, d2-60);
    }
  }
}
