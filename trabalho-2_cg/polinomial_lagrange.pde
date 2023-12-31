public class polinomial_lagrange{
   PVector p0,p1,p2;
   PVector p[]; 
   
   polinomial_lagrange(PVector p0, PVector p1, PVector p2){
      this.p0 = p0; 
      this.p1 = p1;
      this.p2 = p2;
      PVector aux[] = {p0,p1,p2};
      p = aux;
   }
   
   void make_lines(){
      stroke(#FA0D0D);
      beginShape();
      for(float t = 0; t <= 1; t+= 0.01){
        float xinterpolado = p0.x + t*(p2.x - p0.x);
        
        float l0 = ln(xinterpolado,0);            
        float l1 = ln(xinterpolado,1);
        float l2 = ln(xinterpolado,2);
        
        float l[] = {l0,l1,l2};
        float yinterpolado = 0;
        for(int j = 0; j < 3; j++){
          yinterpolado += p[j].y * l[j];
        }
        vertex(xinterpolado,yinterpolado);
      }   
    
      endShape(); 
   }
   
   

  float ln(float x,float l){
      if(l == 0){
          return ((float)((x-p1.x)*(x-p2.x)))/((float)((p0.x-p1.x)*(p0.x-p2.x)));
      }else if(l == 1){
          return ((float)((x-p0.x)*(x-p2.x)))/((float)((p1.x-p0.x)*(p1.x-p2.x)));    
      }
      return  ((float)((x-p0.x)*(x-p1.x)))/((float)((p2.x-p0.x)*(p2.x-p1.x)));   
  
  }
}
