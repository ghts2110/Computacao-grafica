public class PolinomialNewton{
   PVector p0,p1,p2;
   PVector p[]; 
   
   PolinomialNewton(){
   }
   
   void make_lines(PVector p0, PVector p1,PVector p2){
      stroke(#0DFA32);
      beginShape();
      float b0 = p0.y;
      float b1 = (p1.y - p0.y)/(p1.x - p0.x);
      float b2 = (((p2.y - p1.y)/(p2.x-p1.x) - (p1.y - p0.y)/(p1.x - p0.x))/(p2.x - p0.x));
      for(float t = 0; t <= 1; t+=0.01){
        //float xinterpolado = p0.x + t*(p2.x - p0.x);
        float xinterpolado = (1-t) * p0.x + t*p2.x;
        float yinterpolado = b0 + b1*(xinterpolado-p0.x) + b2*(xinterpolado-p0.x) *(xinterpolado - p1.x);
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
