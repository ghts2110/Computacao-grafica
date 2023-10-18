// passaro
double[] dp = new double[1001]; 
void fib(){
  dp[0] = 0;
  dp[1] = 1;
  for(int i = 2; i != 1000; i++){
    dp[i] = dp[i-1] + dp[i-2];
  } 
}
//nuvem
float[][]quadrado = new float[4][2];
float aX = 1; 
float aY = 150;
float bX = 1; 
float bY = 100; 
float cX = 101; 
float cY = 100; 
float dX = 101; 
float dY = 150; 


//pessoa 
float[][] mat_pessoa = new float[39][2];
int d = 0;

// ceu
int r=75, g=135, b=175, time_luz = 0, fase_lua = -1;
float[][] mat_sol = new float[13][2];
float[][] mat_lua = new float[8][2];
float[] mat_vagalume = new float[8];
float raioExterno_meteoro = 20; 

int time_passaro = 2;
float centerX, centerY; // Centro do círculo
float radius = 250;    // Raio do círculo
float angle = 0;       // Ângulo inicial
float speed = 0.02;    // Velocidade de rotação
boolean validate_volta = true;
float angulo_vagalume = 0;

//mar
int time = 0, t = 0, nivel = 600;
boolean val1 = true, val2 = true;

//casa
int time_janela = 0;
boolean open = true;
int time_chamine = 0, cont_chamine = 0;

// thread
Thread tm = new Thread(new Mar());
Thread ts = new Thread(new Sol());
Thread tl = new Thread(new Lua());
Thread tfc = new Thread(new Fumaca_chamine());
Thread tj = new Thread(new Janela());
Thread tmp = new Thread(new Movimento_pessoa());
Thread tv = new Thread(new Vagalumi());
Thread tn = new Thread(new Nuvem());

//mar
float[][] mat_mar = new float[200][2];

void setup(){
  size(600, 600);
  centerX = width / 2;
  centerY = height / 2;
  fib();
  pss();
  ls();
  vm();
  start_mar();
  nuvem();
  
  noLoop();
  noSmooth();
  
  ts.start(); 
  tm.start(); 
  tl.start();
  tfc.start();
  tj.start();
  tmp.start();
  tv.start();
  tn.start();

}

void draw() {
  background(r, g, b);
  

  //chao
  grama();
  areia();
  mar(nivel, t);  
  arvore();
  
  //casa
  parede_da_casa();
  chamine(cont_chamine);
  telhado();
  porta();  
  janela(open);
  macaneta();
  
  //pessoa
  if(mat_sol[0][0] < 600 && mat_sol[0][0] > 0){
    corpo(d);
  }
  
  //ceu
  if(mat_sol[0][0] <= 660){
    sol();
  }
  if(mat_lua[0][0] <= 660){
    if(mat_lua[0][0] < 700){
      vagalume();
    }
    lua(fase_lua);
  }
  
  passaro(dp);
  
}
