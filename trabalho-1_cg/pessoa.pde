void corpo(int d){
  //corpo
  line(mat_pessoa[0][0], mat_pessoa[0][1], mat_pessoa[1][0], mat_pessoa[1][1]);

  //perna
  line(mat_pessoa[2][0], mat_pessoa[2][1], mat_pessoa[3][0], mat_pessoa[3][1]);
  line(mat_pessoa[4][0], mat_pessoa[4][1], mat_pessoa[5][0], mat_pessoa[5][1]);

  //braco
  if(d == 0){
    line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[7][0], mat_pessoa[7][1]);
    if(mat_pessoa[0][0] == 85){
      line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[8][0], mat_pessoa[8][1]);
    }else{
      line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[9][0], mat_pessoa[9][1]);
    }
  }else{
    line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[10][0], mat_pessoa[10][1]);
    line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[11][0], mat_pessoa[11][1]);

  }
  
}  

void cabeca(){
  int centerX = mat_pessoa[12][0]; // Coordenada x do centro do círculo
  int centerY = mat_pessoa[12][1]; // Coordenada y do centro do círculo
  int radius = 13; // Raio do círculo

  float angleStep = TWO_PI / 60; // Divide o círculo em 60 segmentos
  
  for (float angle = 0; angle < TWO_PI; angle += angleStep) {
    float x1 = centerX + cos(angle) * radius;
    float y1 = centerY + sin(angle) * radius;
    float x2 = centerX + cos(angle + angleStep) * radius;
    float y2 = centerY + sin(angle + angleStep) * radius;
    line(x1, y1, x2, y2);
  }
   
  //olhos 
  point(mat_pessoa[13][0], mat_pessoa[13][1]);
  point(mat_pessoa[14][0], mat_pessoa[14][1]); 
}

void chapeu(int d){
  stroke(139, 69, 19);
  
  if(d == 0){
    line(mat_pessoa[15][0], mat_pessoa[15][1], mat_pessoa[16][0], mat_pessoa[16][1]);
    for(float i = -2; i != 5.5; i+=0.25){
      line(mat_pessoa[17][0]+i, mat_pessoa[17][1]-i, mat_pessoa[18][0]+i, mat_pessoa[18][1]-i);
    }
  }else{
    line(mat_pessoa[19][0], mat_pessoa[19][1], mat_pessoa[20][0], mat_pessoa[20][1]);
    for(float i = -2; i != 5.5; i+=0.25){
      line(mat_pessoa[21][0]-i, mat_pessoa[21][1]-i, mat_pessoa[22][0]-i, mat_pessoa[22][1]-i);
    }
  }
}

void pss(){
  //corpo
  mat_pessoa[0][0] = 250;
  mat_pessoa[0][1] = 460;
  mat_pessoa[1][0] = 250;
  mat_pessoa[1][1] = 520;
  
  //perna
  mat_pessoa[2][0] = 250;
  mat_pessoa[2][1] = 520;
  mat_pessoa[3][0] = 265;
  mat_pessoa[3][1] = 540;
  mat_pessoa[4][0] = 250;
  mat_pessoa[4][1] = 520;
  mat_pessoa[5][0] = 235;
  mat_pessoa[5][1] = 540;
  
  //braco
  mat_pessoa[6][0] = 250;
  mat_pessoa[6][1] = 475;
  mat_pessoa[7][0] = 265;
  mat_pessoa[7][1] = 495;
  mat_pessoa[8][0] = 235;
  mat_pessoa[8][1] = 475;
  mat_pessoa[9][0] = 235;
  mat_pessoa[9][1] = 455;
  mat_pessoa[10][0] = 265;
  mat_pessoa[10][1] = 455;
  mat_pessoa[11][0] = 235;
  mat_pessoa[11][1] = 495;
  
  //cabeca
  mat_pessoa[12][0] = 251;
  mat_pessoa[12][1] = 448;
  
  //olhos
  mat_pessoa[13][0] = 246;
  mat_pessoa[13][1] = 447;
  mat_pessoa[14][0] = 254;
  mat_pessoa[14][1] = 447;
  
  //chapeu
  mat_pessoa[15][0] = 235;
  mat_pessoa[15][1] = 430;
  mat_pessoa[16][0] = 275;
  mat_pessoa[16][1] = 450;
  mat_pessoa[17][0] = 243;
  mat_pessoa[17][1] = 430;
  mat_pessoa[18][0] = 268;
  mat_pessoa[18][1] = 442;
  mat_pessoa[19][0] = 233;
  mat_pessoa[19][1] = 452;
  mat_pessoa[20][0] = 270;
  mat_pessoa[20][1] = 432;
  mat_pessoa[21][0] = 237;
  mat_pessoa[21][1] = 447;
  mat_pessoa[22][0] = 260;
  mat_pessoa[22][1] = 435;
}
