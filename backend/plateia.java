
public class Plateia { 
    //Roleta roleta = new Roleta();

    public static void main(String[] args) {
         Roleta r = new Roleta();
         r.setA(0.25);
         r.setB(0.25);
         r.setC(0.25);
         r.setD(0.25);

         System.out.println(r.sortear());

       /*   r.setA(0.25);
        r.setB(0.25);
        r.setC(0.25);
        r.setD(0.25);
        
        for (int i = 0; i <= 100; i++) {
            System.out.println(r.sortear());
        }*/
    }
    
}
