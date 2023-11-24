class interpolacao_simples{
   PVector p0,p1;
   
   interpolacao_simples(PVector p0, PVector p1){
      this.p0 = p0;
      this.p1 = p1;
   }
   
   
   void make_lines(){
     stroke(0);
     beginShape(); 
     for(float t = 0; t <= 1; t+= 0.01){
        float xinterpolado = ((1 - t) * p0.x) + (t * p1.x);
        float yinterpolado = ((1 - t) * p0.y) + (t * p1.y);
        vertex(xinterpolado,yinterpolado);
      }
     endShape();  
    }
  
}
