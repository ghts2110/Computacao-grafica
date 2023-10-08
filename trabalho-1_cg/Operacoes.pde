public class Operacoes{
  
  public float[][] translacao(float x, float y, float tx, float ty){
    float[][] matrizTranslacao = { {1, 0, tx}, {0, 1, ty}, {0, 0, 1} };
    float[][] xy = { {x}, {y}, {1} };
    return multiplicacao(matrizTranslacao, xy);
  }
  
  public float[][] rotacao(float x, float y, float theta){
    float[][] matriz = { {cos(theta), -sin(theta), 0}, {sin(theta), cos(theta), 0}, {0, 0, 1} };
    float[][] xy = { {x}, {y}, {1} };
    return multiplicacao(matriz, xy);
  }
  
  public float[][] cisalhamento(float x, float y, float cx, float cy){
    float[][] matrizCisalhamento = {{1, cx, 0}, {cy, 1, 0}, {0, 0, 1}};
    float[][] xy = { {x}, {y}, {1} };
    return multiplicacao(matrizCisalhamento, xy);
  }
  
  public float[][] escala(float x, float y, float sx, float sy){
    float[][] matrizEscala = { {sx, 0, 0}, {0, sy, 0}, {0, 0, 1}};
    float[][] xy = { {x}, {y}, {1} };
    return multiplicacao(matrizEscala, xy);
  }
  
  private float[][] multiplicacao(float[][] m, float[][]n){
    float[][] resultado = new float[m.length][n[0].length];
    
    for(int i=0; i < m.length; i++){
      for(int j =0; j < n[0].length; j++){
        float soma = 0;
        
        for(int k=0; k <m[0].length; k++){
          soma = soma + (m[i][k] * n[k][j]);
        }
        
        resultado[i][j] = soma;
      }
    }
    
    return resultado;
  }
}
