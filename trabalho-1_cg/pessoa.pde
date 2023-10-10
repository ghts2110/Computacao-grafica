void corpo(int d){
  //cabeca
  line(mat_pessoa[0][0], mat_pessoa[0][1], mat_pessoa[1][0], mat_pessoa[1][1]);
  line(mat_pessoa[0][0], mat_pessoa[0][1], mat_pessoa[2][0], mat_pessoa[2][1]);
  
  line(mat_pessoa[1][0], mat_pessoa[1][1], mat_pessoa[3][0], mat_pessoa[3][1]);

  line(mat_pessoa[2][0], mat_pessoa[2][1], mat_pessoa[3][0], mat_pessoa[3][1]);
  
  //corpo
  line(mat_pessoa[4][0], mat_pessoa[4][1], mat_pessoa[5][0], mat_pessoa[5][1]);
  line(mat_pessoa[4][0], mat_pessoa[4][1], mat_pessoa[6][0], mat_pessoa[6][1]);
  
  line(mat_pessoa[5][0], mat_pessoa[5][1], mat_pessoa[7][0], mat_pessoa[7][1]);

  line(mat_pessoa[6][0], mat_pessoa[6][1], mat_pessoa[7][0], mat_pessoa[7][1]);
  
  //perna
  line(mat_pessoa[8][0], mat_pessoa[8][1], mat_pessoa[9][0], mat_pessoa[9][1]);
  line(mat_pessoa[8][0], mat_pessoa[8][1], mat_pessoa[10][0], mat_pessoa[10][1]);
  
  line(mat_pessoa[9][0], mat_pessoa[9][1], mat_pessoa[11][0], mat_pessoa[11][1]);

  line(mat_pessoa[10][0], mat_pessoa[10][1], mat_pessoa[11][0], mat_pessoa[11][1]);
  
  line(mat_pessoa[12][0], mat_pessoa[12][1], mat_pessoa[13][0], mat_pessoa[13][1]);
  
  //braco
  if(mat_pessoa[0][0] <= 85){
    line(mat_pessoa[35][0], mat_pessoa[35][1], mat_pessoa[36][0], mat_pessoa[36][1]);
    line(mat_pessoa[35][0], mat_pessoa[35][1], mat_pessoa[37][0], mat_pessoa[37][1]);
    
    line(mat_pessoa[36][0], mat_pessoa[36][1], mat_pessoa[38][0], mat_pessoa[38][1]);
  
    line(mat_pessoa[37][0], mat_pessoa[37][1], mat_pessoa[38][0], mat_pessoa[38][1]); 
  }else{
    line(mat_pessoa[14][0], mat_pessoa[14][1], mat_pessoa[15][0], mat_pessoa[15][1]);
    line(mat_pessoa[14][0], mat_pessoa[14][1], mat_pessoa[16][0], mat_pessoa[16][1]);
    
    line(mat_pessoa[15][0], mat_pessoa[15][1], mat_pessoa[17][0], mat_pessoa[17][1]);
  
    line(mat_pessoa[16][0], mat_pessoa[16][1], mat_pessoa[17][0], mat_pessoa[17][1]);  
  }
  
  line(mat_pessoa[18][0], mat_pessoa[18][1], mat_pessoa[19][0], mat_pessoa[19][1]);
  line(mat_pessoa[18][0], mat_pessoa[18][1], mat_pessoa[20][0], mat_pessoa[20][1]);
  
  line(mat_pessoa[19][0], mat_pessoa[19][1], mat_pessoa[21][0], mat_pessoa[21][1]);

  line(mat_pessoa[20][0], mat_pessoa[20][1], mat_pessoa[21][0], mat_pessoa[21][1]);  
  
  //olho
  line(mat_pessoa[22][0], mat_pessoa[22][1], mat_pessoa[23][0], mat_pessoa[23][1]);
  line(mat_pessoa[22][0], mat_pessoa[22][1], mat_pessoa[24][0], mat_pessoa[24][1]);
  
  line(mat_pessoa[23][0], mat_pessoa[23][1], mat_pessoa[25][0], mat_pessoa[25][1]);

  line(mat_pessoa[24][0], mat_pessoa[24][1], mat_pessoa[25][0], mat_pessoa[25][1]);

  line(mat_pessoa[26][0], mat_pessoa[26][1], mat_pessoa[27][0], mat_pessoa[27][1]);
  line(mat_pessoa[26][0], mat_pessoa[26][1], mat_pessoa[28][0], mat_pessoa[28][1]);
  
  line(mat_pessoa[27][0], mat_pessoa[27][1], mat_pessoa[29][0], mat_pessoa[29][1]);

  line(mat_pessoa[28][0], mat_pessoa[28][1], mat_pessoa[29][0], mat_pessoa[29][1]);

  //boca
  if(d == 0){
    line(mat_pessoa[30][0], mat_pessoa[30][1], mat_pessoa[31][0], mat_pessoa[31][1]);
    line(mat_pessoa[30][0], mat_pessoa[30][1], mat_pessoa[32][0], mat_pessoa[32][1]);
  }else{
    line(mat_pessoa[30][0], mat_pessoa[30][1], mat_pessoa[33][0], mat_pessoa[33][1]);
    line(mat_pessoa[30][0], mat_pessoa[30][1], mat_pessoa[34][0], mat_pessoa[34][1]);
  }
}  

void pss(){
  //cabeca
  mat_pessoa[0][0] = 240;
  mat_pessoa[0][1] = 455;
  mat_pessoa[1][0] = 270;
  mat_pessoa[1][1] = 455;
  mat_pessoa[2][0] = 240;
  mat_pessoa[2][1] = 480;
  mat_pessoa[3][0] = 270;
  mat_pessoa[3][1] = 480;
  
  //olho
  mat_pessoa[22][0] = 245;
  mat_pessoa[22][1] = 465;
  mat_pessoa[23][0] = 250;
  mat_pessoa[23][1] = 465;
  mat_pessoa[24][0] = 245;
  mat_pessoa[24][1] = 470;
  mat_pessoa[25][0] = 250;
  mat_pessoa[25][1] = 470;
  
  mat_pessoa[26][0] = 260;
  mat_pessoa[26][1] = 465;
  mat_pessoa[27][0] = 265;
  mat_pessoa[27][1] = 465;
  mat_pessoa[28][0] = 260;
  mat_pessoa[28][1] = 470;
  mat_pessoa[29][0] = 265;
  mat_pessoa[29][1] = 470;
  
  //boca
  mat_pessoa[30][0] = 255;
  mat_pessoa[30][1] = 475;
  
  mat_pessoa[31][0] = 250;
  mat_pessoa[31][1] = 480;
  mat_pessoa[32][0] = 260;
  mat_pessoa[32][1] = 480;
  
  mat_pessoa[33][0] = 250;
  mat_pessoa[33][1] = 473;
  mat_pessoa[34][0] = 260;
  mat_pessoa[34][1] = 473;
  
  //corpo
  mat_pessoa[4][0] = 245;
  mat_pessoa[4][1] = 480;
  mat_pessoa[5][0] = 265;
  mat_pessoa[5][1] = 480;
  mat_pessoa[6][0] = 245;
  mat_pessoa[6][1] = 520;
  mat_pessoa[7][0] = 265;
  mat_pessoa[7][1] = 520;
  
  //perna
  mat_pessoa[8][0] = 250;
  mat_pessoa[8][1] = 520;
  mat_pessoa[9][0] = 260;
  mat_pessoa[9][1] = 520;
  mat_pessoa[10][0] = 250;
  mat_pessoa[10][1] = 540;
  mat_pessoa[11][0] = 260;
  mat_pessoa[11][1] = 540;
  mat_pessoa[12][0] = 255;
  mat_pessoa[12][1] = 520;
  mat_pessoa[13][0] = 255;
  mat_pessoa[13][1] = 540;
  
  //braco
  mat_pessoa[14][0] = 240;
  mat_pessoa[14][1] = 485;
  mat_pessoa[15][0] = 245;
  mat_pessoa[15][1] = 485;
  mat_pessoa[16][0] = 240;
  mat_pessoa[16][1] = 515;
  mat_pessoa[17][0] = 245;
  mat_pessoa[17][1] = 515;
  
  mat_pessoa[35][0] = 223;
  mat_pessoa[35][1] = 485;
  mat_pessoa[36][0] = 245;
  mat_pessoa[36][1] = 485;
  mat_pessoa[37][0] = 223;
  mat_pessoa[37][1] = 495;
  mat_pessoa[38][0] = 245;
  mat_pessoa[38][1] = 495;
  
  mat_pessoa[18][0] = 265;
  mat_pessoa[18][1] = 485;
  mat_pessoa[19][0] = 270;
  mat_pessoa[19][1] = 485;
  mat_pessoa[20][0] = 265;
  mat_pessoa[20][1] = 515;
  mat_pessoa[21][0] = 270;
  mat_pessoa[21][1] = 515;
}
