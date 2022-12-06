package br.com.showespigao.modelo.bo;

import java.util.ArrayList;
import java.util.List;

public class UniversitariosBO {
    public static void main(String[] args) {
        RoletaBO r = new RoletaBO();
        r.setA(0.10);
        r.setB(0.70);
        r.setC(0.10);
        r.setD(0.10);

        char[] sorteio = new char[]{'.', '.', '.'};

        for (int i = 0; i < 3; i++) {
            sorteio[i] = r.sortear();
        }
        
        System.out.println(sorteio);
    }
}
