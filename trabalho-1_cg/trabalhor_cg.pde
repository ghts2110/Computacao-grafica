int x_sol = 0, y_sol = 50;
int x_lua = 900, y_lua = 50, lua = 0;
float x_nuvem = 700, y_nuvem, nuvem = 5;
int dia = 0;
int m1 = -50, m2 = -50, m3 = -50, m4 = -50, m5 = -50, m6 = -50, m7 = -50, m8 = -50;
int tm = 15;
int smokeX1= 335, smokeX2 = 365;// x1 e x2 da chamine

// ceu
int r=144, g=192, b=255;
float dist_sol = -60, dist_lua = 670;

//mar
int time = 0, t = 0, nivel = 600;
boolean val1 = true, val2 = true;

//casa
int time_janela = 0;
boolean open = true;

void setup(){
  size(600, 600);
}

void draw() {
  background(r, g, b);

  //chao
  grama();
  areia();
  
  if(time % 3 == 0 && val1){
    t++;
    if(t == 20){
      val1 = false;
    }
  }if(time % 3 == 0 && !val1){
    t--;
    if(t == 0){
      val1 = true;
      time = -1;
    }
  }
  time++;
  
  Chamine();

  
  if(time % 113 == 0 && val2){
    nivel--;
    if(nivel == 540){
      val2 = false;
    }
  }else if(time % 113 == 0 && !val2){
    nivel++;
    if(nivel == 600){
      val2 = true;
    }
  }
  mar(nivel, t);  

  //casa
  Parede_da_casa();
  telhado();
  porta();
  
  time_janela++;
  if(time_janela <= 600){
    open = true;
  }else{
    open = false;
  }
  time_janela %= 1200;
  
  janela(open);
  macaneta();
  
  //ceu
  if(dist_sol <= 660){
     dist_sol+=1.2;
     sol(dist_sol);
     if(dist_sol > 600){
       dist_lua = -60;
     }
  }
  
  if(dist_lua <= 660){
    dist_lua+=1.2;
    lua(dist_lua);
    if(dist_lua > 600){
      dist_sol = -60;
    }
  }
}
