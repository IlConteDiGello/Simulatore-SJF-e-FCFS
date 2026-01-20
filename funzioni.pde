import java.util.ArrayList;
import java.util.Collections;
import java.io.File;
import java.util.Scanner;

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

PImage fetchSprite(String nome) {
  nome = nome.toLowerCase();

  switch (nome) {
    case "luca giusti":
      return loadImage("freeman.png");
    
    case "lucia pellegrini":
      return loadImage("zombie.png");

    default:
      return loadImage("clienteDefault.png");
  }

}

PImage immagineCassa;

void loadImages(){
  immagineCassa = loadImage("Cassa.png");
  immagineCassa.resize(100,100);
}
