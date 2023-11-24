Thread sm = new Thread(new Star_movement());
PVector v1, v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13;
PVector v[];
boolean b = true;
void setup(){
    size(600, 600);
    v1 = new PVector (random(width),random(height));
    v2 = new PVector (random(width),(random(height)));
    v3 = new PVector (random(width),(random(height)));
    v4 = new PVector (random(width),(random(height)));
    v5 = new PVector (random(width),(random(height)));
    v6 = new PVector (random(width),(random(height)));
    v7 = new PVector (random(width),(random(height)));
    v8 = new PVector (random(width),(random(height)));
    v9 = new PVector (random(width),(random(height)));
    v10= new PVector (random(width),(random(height)));
    v11= new PVector (random(width),(random(height)));
    v12 = new PVector (random(width),(random(height)));
    v13 = new PVector (random(width),(random(height)));
    
    PVector aux[] = {v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13};
    v = aux;
    sm.start();
    noLoop();
}

void draw(){
   
  background(255);

  
  strokeWeight(2);

  //interpolacao linear da estrela 0 até a 3
  if(b){
    for(int i = 0; i < 6; i++){
       interpolacao_simples p = new interpolacao_simples(v[i],v[i+1]);
       p.make_lines();
    }  
 
   

  //interpolacao polinominal da estrela 3 a 5
    polinomial_lagrange poli = new polinomial_lagrange(v[6],v[7],v[8]);
    poli.make_lines();
    
  //interpolacao polinomial newton 
  PolinomialNewton pn = new PolinomialNewton();
  pn.make_lines(v[8], v[9], v[12]);
  
    interpolacao_simples q = new interpolacao_simples(v[9], v[11]);
    q.make_lines();
    interpolacao_simples r = new interpolacao_simples(v[9], v[10]);
    r.make_lines();
  }
  
  //criando cada estrela
  float len;
  for(int i = 0; i < v.length; i++){
    if(i == 2 || i == 6 || i == 8){ // grandes
      len = 12;
    }else if(i == 0 || i == 11 || i == 12){ //média
      len = 8;
    }else{ //pequenas
      len = 6;  
    }
      fill(0);
      ellipse(v[i].x,v[i].y,len,len);
}
  
  fill(255);
  
}