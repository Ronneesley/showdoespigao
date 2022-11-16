import java.util.Random;


public class roleta {
    public double opA;
    public double opB;
    public double opC;
    public double opD;
    public double getOpA() {
        return opA;
    }
    public double getOpB() {
        return opB;
    }
    public double getOpC() {
        return opC;
    }
    public double getOpD() {
        return opD;
    }
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
    
    public char sortear() {
        char sorteado = ' ';
        Random rand = new Random();
        char[] possibilidades = {'a', 'b', 'c', 'd'};
        double[] probabilidades = {opA, opB, opC, opD};
        double total = 0;
        double chanceSorteada = rand.nextDouble();
        for (int j = 0; j < possibilidades.length; j++) {
            total += probabilidades[j];
            if (chanceSorteada <= total) {
                //System.out.println(possibilidades[j]);
                sorteado = possibilidades[j];
                break;
            }
        }
        return sorteado;
    }
    /**
     * @param args
     */
    public static void main(String[] args) {
        roleta r = new roleta();
        r.setA(0.25);
        r.setB(0.25);
        r.setC(0.25);
        r.setD(0.25);

        int a = 0;
        int b = 0;
        int c = 0;
        int d = 0;
        char l;
        for (int i = 0; i < 100; i++) {
            l = r.sortear();
            if (l == 'a') {
                a += 1;
            } else if (l == 'b') {
                b += 1;
            } else if (l == 'c') {
                c += 1;
            } else if (l == 'd') {
                d += 1;
            }
        }
        System.out.println("Letra a " + a + " votos");
        System.out.println("Letra b " + b + " votos");
        System.out.println("Letra c " + c + " votos");
        System.out.println("Letra d " + d + " votos");
    }
        //verificar qual recebeu mais votos
        public void resultado() {
            char x = ' ';
            if (a > b && a > c && a > d){
                System.out.println("a");
                x = 'a';
            }else if (b>c && b>d){
                System.out.println("b");
                x = 'b';
            }else if (c>d){
                System.out.println("c");
                x = 'c';
            }else {
                System.out.println("d");
                x = 'd';
            }
            System.out.println(x);
        
        // selecionar a opção com mais votos
        char resultado = resultado();
        System.out.println(resultado);
        //mapear a seleção em 
        /*public char opinar(){
            System.out.println(opinar+"é a escolha");

        }    
         */
        //Map<resultado, char> resultado = opinar();
    }
}
