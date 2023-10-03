double[] dp = new double[1001]; 
void fib(){
  dp[0] = 0;
  dp[1] = 1;
  for(int i = 2; i != 1000; i++){
    dp[i] = dp[i-1] + dp[i-2];
  } 
}

//pessoa 
int x = 250, y = 490, d = 0;

// ceu
int r=75, g=135, b=175, time_luz = 0, fase_lua = -1;
float dist_lua = 670;
int time_passaro = 2;
float centerX, centerY; // Centro do círculo
float radius = 250;    // Raio do círculo
float angle = 0;       // Ângulo inicial
float speed = 0.02;    // Velocidade de rotação
boolean validate_volta = true;

//mar
int time = 0, t = 0, nivel = 600;
boolean val1 = true, val2 = true;

//casa
int time_janela = 0;
boolean open = true;
int time_chamine = 0, cont_chamine = 0;

void setup(){
  size(600, 600);
  centerX = width / 2;
  centerY = height / 2;
  fib();
  noLoop();
  noSmooth();
  Thread t = new Thread(new SunThread()); // Cria uma nova thread usando a classe SunThread
  t.start(); // Inicia a thread
  try{
    t.sleep(1000);
  }catch(Exception e){
    
  }
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
  arvore();

  //ceu
  time_luz++;
  
  
  if(dist_lua <= 660){
    dist_lua+=1.2;
    
    if(time_luz % 4 == 0 && dist_lua <= 300){
       r--;
       g--;
       b--; 
     }else if(time_luz  % 4 == 0){
       r++;
       g++;
       b++;
     }
     
    lua(dist_lua, fase_lua, r, g, b);
    
    if(dist_lua > 659){
      dist_sol = -60;
    }
  }
  
  //casa
  Parede_da_casa();
  time_chamine++;
  if(time_chamine % 7 == 0){
    cont_chamine++;
  }
  Chamine(cont_chamine);
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
  
  //pessoa
  if(dist_sol < 600 && dist_sol > 0){
    if(dist_sol < 300 && x > 85){
      d = 0;
      x--;
    }else if(dist_sol > 392){
      d = 1;
      x++;
    }
  
    corpo(x, y, d);
    cabeca(x, y);
    chapeu(x, y, d);
  }
  
    passaro(dp);
}

class SunThread implements Runnable {
  public void run() {
    while (true) {
      redraw();
    }
  }
}
