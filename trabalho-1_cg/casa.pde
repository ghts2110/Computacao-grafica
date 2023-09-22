int smokeX1= 335, smokeX2 = 365;// x1 e x2 da chamine


void Parede_da_casa(){
  stroke(200, 200, 200);
  for(int i= 365;i != 530; i++){
    line(200, i, 380, i);
  }
}

void telhado(){
  stroke(255, 0, 0);
  for(int i= 180;i != 400; i++){
    line(i, 365, 290, 280);
  }
}

void porta(){
  stroke(0);
  line(230, 450, 230, 530);
  line(270, 450, 270, 530);
  line(230, 450, 270, 450);
}

void macaneta(){
  stroke(0);
  point(260, 500);
}

void janela(boolean open){
  if(open){
    stroke(100, 60, 30);
    for(int y = 440; y != 480; y++){
      line(310, y, 350, y);
    }
        
    stroke(0);
    line(310, 440, 290, 437);
    line(310, 480, 290, 483);
    line(290, 483, 290, 437);
    line(290, 460, 310, 460);
    
    line(350, 440, 370, 437);
    line(350, 480, 370, 483);
    line(370, 483, 370, 437);
    line(370, 460, 350, 460);
  }else{
    stroke(255, 255, 0);
    for(int y = 440; y != 480; y++){
      line(310, y, 350, y);
    }
    stroke(0);
    line(310, 440, 350, 440);
    line(310, 460, 350, 460);
    line(310, 480, 350, 480);
    line(310, 440, 310, 480);
    line(330, 440, 330, 480);
    line(350, 440, 350, 480);
  }
}

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
