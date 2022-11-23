package br.com.showespigao.modelo.bo;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class PlateiaBO {
    
    private int quantidadeMembros = 100;
    
    private double probabilidadeAcerto = 0.45;
    
    private int respostaCerta = 0;
    
    public PlateiaBO(int quantidadeMembros, double probabilidadeAcerto, int respostaCerta) {
        this.quantidadeMembros = quantidadeMembros;
        this.probabilidadeAcerto = probabilidadeAcerto;
        this.respostaCerta = respostaCerta;
    }

    /**
     * Sorteia a opção escolhida pela plateia
     * @param qtde quantidade de pessoas na plateia
     * @return 
     */
    public int[] sortear() {
        RoletaBO r = new RoletaBO();
        double percentualDemais = (1D - probabilidadeAcerto) / 3;
        
        double percentuais[] = {percentualDemais, percentualDemais, percentualDemais, percentualDemais};
        percentuais[respostaCerta] = probabilidadeAcerto;
        
        r.setA(percentuais[0]);
        r.setB(percentuais[1]);
        r.setC(percentuais[2]);
        r.setD(percentuais[3]);

        int[] sorteio = new int[]{0, 0, 0, 0};

        for (int i = 0; i < getQuantidadeMembros(); i++) {
            sorteio[r.sortear() - 1]++;
        }

        return sorteio;
    }
    
    public static void main(String[] args) {
        PlateiaBO bo = new PlateiaBO(100, 0.45, 2);
        int[] sorteado = bo.sortear();
        
        System.out.println("A: " + sorteado[0]);
        System.out.println("B: " + sorteado[1]);
        System.out.println("C: " + sorteado[2]);
        System.out.println("D: " + sorteado[3]);
        System.out.println("TOTAL: " + (sorteado[0] + sorteado[1] + sorteado[2] + sorteado[3]));
    }

    public int getQuantidadeMembros() {
        return quantidadeMembros;
    }

    public void setQuantidadeMembros(int quantidadeMembros) {
        this.quantidadeMembros = quantidadeMembros;
    }

    public double getProbabilidadeAcerto() {
        return probabilidadeAcerto;
    }

    public void setProbabilidadeAcerto(double probabilidadeAcerto) {
        this.probabilidadeAcerto = probabilidadeAcerto;
    }

    public int getRespostaCerta() {
        return respostaCerta;
    }

    public void setRespostaCerta(int respostaCerta) {
        this.respostaCerta = respostaCerta;
    }
}
