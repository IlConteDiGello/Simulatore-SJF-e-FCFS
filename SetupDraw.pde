void setup() {
  size(400, 400);


  Cliente[] listaClienti = parseInput("clienti.txt");

  for (int i = 0; i < listaClienti.length; i++) {
    println(listaClienti[i]);
    println(i);
  }
}
