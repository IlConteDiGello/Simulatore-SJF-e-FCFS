package defaultpackage;

public class Main {
    /*
    public static void main(String[] args){
        Finestra simulazione = new Finestra();
        simulazione.setVisible(true);
    }*/
    
    public static void main (String[] args) {
        Cliente[] listaClienti = Parser.parseInput("../../../../clienti.txt");
        
        for (int i = 0; i < listaClienti.length; i++) {
            System.out.println(listaClienti[i]);
            System.out.println(i);
        }
    }
}
