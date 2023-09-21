void Chamine(){
  stroke(130, 60, 10);
  for(int i= 300;i != 350; i++){
    line(330, i, 365, i);
  }
  stroke(0);

  stroke(110, 60, 10);
  for(int i= 290;i != 300; i++){
    line(320, i, 375, i);
  }
  stroke(0);
  
  for (int y = 290; y > 0 ; y = y -10) {
    
    stroke(10, 40, 10);
    line(smokeX1, y, smokeX2, y);
    
    smokeX1++;
    smokeX2--;
    if(smokeX1 == smokeX2){
      smokeX1 = 335;
      smokeX2 = 365;
    }
    stroke(0);
  }
}