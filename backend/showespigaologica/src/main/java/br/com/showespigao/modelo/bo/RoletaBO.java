package br.com.showespigao.modelo.bo;

import java.util.Random;

/**
 * Código responsável por realizar o sorteio da roleta
 * @author Pedro Felipe Dias
 */
public class RoletaBO {
    private static char[] letras = {'a', 'b', 'c', 'd'};
    public double opA;
    public double opB;
    public double opC;
    public double opD;
    
    public void setA(double a) { 
        this.opA = a; 
    }
    public void setB(double b) { 
        this.opB = b; 
    }
    public void setC(double c) {
        this.opC = c;
    }
    public void setD(double d) {
        this.opD = d;
    }
    
    public int sortear() {
        int sorteado = 0;
        Random rand = new Random();
        int[] possibilidades = {1, 2, 3, 4};
        double[] probabilidades = {opA, opB, opC, opD};
        double total = 0;
        double chanceSorteada = rand.nextDouble();
        
        for (int j = 0; j < possibilidades.length; j++) {
            total += probabilidades[j];
            
            if (chanceSorteada <= total) {
                sorteado = possibilidades[j];
                break;
            }
        }
        
        return sorteado;
    }
    
    public char interpretar(int resultado){
        return letras[resultado];
    }
    
    public static void main(String[] args) {
        RoletaBO r = new RoletaBO();
        r.setA(0.10);
        r.setB(0.70);
        r.setC(0.10);
        r.setD(0.10);
        
        int s = r.sortear();
        System.out.println("Letra: " +  r.interpretar(s));
    }
}