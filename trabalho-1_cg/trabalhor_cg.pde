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
float dist_sol = -60, dist_lua = 670;
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

//Nuvem1
float x_nuvem = 0;
float y_nuvem = 150;
float tamanho = 50;
float esp = 20;
float vel = 1; 


// thread
Thread tm = new Thread(new Mar());
Thread ts = new Thread(new Sol());
Thread tl = new Thread(new Lua());
Thread tfc = new Thread(new Fumaca_chamine());
Thread tj = new Thread(new Janela());
Thread tmp = new Thread(new Movimento_pessoa());
Thread tn = new Thread(new Nuvem());

void setup(){
  size(600, 600);
  centerX = width / 2;
  centerY = height / 2;
  fib();
  noLoop();
  noSmooth();
  
  ts.start(); 
  tm.start(); 
  tl.start();
  tfc.start();
  tj.start();
  tmp.start();
  tn.start();
}

void draw() {
  background(r, g, b);

  //chao
  grama();
  areia();
  mar(nivel, t);  
  arvore();

  //ceu
  if(dist_sol <= 660){
    sol(dist_sol);
  }
  if(dist_lua <= 660){
    lua(dist_lua, fase_lua, r, g, b);
  }
  
  //casa
  parede_da_casa();
  chamine(cont_chamine);
  telhado();
  porta();  
  janela(open);
  macaneta();
  
  //pessoa
  if(dist_sol < 600 && dist_sol > 0){
    corpo(x, y, d);
    cabeca(x, y);
    chapeu(x, y, d);
  }
  
    passaro(dp);
    nuvem(x_nuvem,y_nuvem,esp,tamanho);
}
