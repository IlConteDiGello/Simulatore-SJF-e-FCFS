
//https://www.w3schools.com/java/java_files_read.asp
//https://www.w3schools.com/java/java_try_catch_resources.asp
//https://docs.oracle.com/javase/8/docs/api/java/util/Scanner.html

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

ArrayList<Cliente> clienti = new ArrayList<Cliente>();

Cliente[] parseInput (String fileName) {
  //legge il file di input e ritorna un array di clienti
  

  File inputFile = new File(dataPath(fileName)); //forza processing a cercare nella cartella "data",
  //cosi trova sempre il file

  try (Scanner reader = new Scanner(inputFile).useDelimiter(",\\s*|\\r?\\n")) {
    while (reader.hasNext()) {
      String nome = reader.next();
      int numArticoli = reader.nextInt();
      int cassaPreferita = reader.nextInt();
      clienti.add(new Cliente(nome, numArticoli, cassaPreferita));
    }
  }
  catch (Exception e) {
    System.out.println("An error occurred: " + e);
  }

  return clienti.toArray(Cliente[]::new);
}
