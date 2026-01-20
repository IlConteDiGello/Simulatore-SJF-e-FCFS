import java.util.ArrayList;
import java.util.Collections;
import java.io.File;
import java.util.Scanner;

//queste due funzioni smistano i clienti in base alla cassa preferita
Cliente[] creaFilaFCFS (Cliente[] clientiDaSmistare) {
  ArrayList<Cliente> provvisorio = new ArrayList<>();

  for (int i = 0; i < clientiDaSmistare.length; i++)
    if (clientiDaSmistare[i].getCassaPreferita() == 0)
      provvisorio.add(clientiDaSmistare[i]);

  return provvisorio.toArray(Cliente[]::new);
}

Cliente[] creaFilaSJF (Cliente[] clientiDaSmistare) {
  ArrayList<Cliente> provvisorio = new ArrayList<>();

  for (int i = 0; i < clientiDaSmistare.length; i++)
    if (clientiDaSmistare[i].getCassaPreferita() == 1)
      provvisorio.add(clientiDaSmistare[i]);

  Collections.sort(provvisorio);

  return provvisorio.toArray(Cliente[]::new);
}

//legge il file clienti.txt e lo analizza creando un array con i clienti
Cliente[] parseInput (String fileName) {
  File inputFile = new File(dataPath(fileName)); //forza processing a cercare nella cartella "data", cosi trova sempre il file
  ArrayList<Cliente> clienti = new ArrayList<Cliente>();

  try (Scanner reader = new Scanner(inputFile).useDelimiter(",|\\r?\\n")) {
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


//EASTER EGG: carica gli sprite in base al nome. Alcuni nomi caricano sprite diversi
PImage fetchSprite(String nome) {
  nome = nome.toLowerCase();
  PImage prov;

  switch (nome) {
    case "luca giusti":
      prov = loadImage("stickman.jpg");
      prov.resize((int) (prov.width * 0.1), (int) (prov.height * 0.1));
      break;
    
    case "lucia pellegrini":
      prov = loadImage("stickman.jpg");
      prov.resize((int) (prov.width * 0.1), (int) (prov.height * 0.1));
      break;

    default:
      prov = loadImage("stickman.jpg");
      prov.resize((int) (prov.width * 0.1), (int) (prov.height * 0.1));
      break;
  }

  return prov;

}
