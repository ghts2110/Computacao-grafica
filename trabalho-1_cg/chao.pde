void grama(){
  stroke(34, 139, 34);
  for(int i= 500;i != 600; i++){
    line(0, i, 420, i);
  }
}
void areia(){
  stroke(194, 178, 128);
  for(int i= 500;i != 600; i++){
    line(420, i, 600, i);
  }
}

void mar(int nivel, int t){
  stroke(0, 0, 128);
  int dimi = 100;
  
  for(int i= 500;i != 600; i++){
    int x1 = nivel, x2 = 600;
    if(dimi != 0){
        dimi--;
    }
    
    line(x1-dimi-t, i, x2, i);
  }
}
