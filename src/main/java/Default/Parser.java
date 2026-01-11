package Default;

//https://www.w3schools.com/java/java_files_read.asp
//https://www.w3schools.com/java/java_try_catch_resources.asp
//https://docs.oracle.com/javase/8/docs/api/java/util/Scanner.html

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Parser {
    
    public static Cliente[] parseInput (String fileName) {
        //legge il file di input e ritorna un array di clienti
        String nome;
        int numArticoli;
        int cassaPreferita;
        ArrayList<Cliente> clienti = new ArrayList(0);
        
        File inputFile = new File(fileName);

        try (Scanner reader = new Scanner(inputFile).useDelimiter(",|\\n")) {
            while (reader.hasNext()) {
                nome = reader.next();
                numArticoli = reader.nextInt();
                cassaPreferita = reader.nextInt();
                clienti.add(new Cliente(nome, numArticoli, cassaPreferita));
          }
        } 
        catch (Exception exception) {
            System.out.println("An error occurred.");
        }
        
        Cliente[] temp = new clienti.toArray(temp);
        
        return temp;
        
    }
}
