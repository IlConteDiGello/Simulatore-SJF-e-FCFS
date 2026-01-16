void setup() {
  size(400, 400);


  Cliente[] listaClienti = parseInput("clienti.txt");
  Cliente[] filaFCFS, filaSJF;

  for (int i = 0; i < listaClienti.length; i++) {
    println(listaClienti[i]);
  }
  
  println();
  
  filaFCFS = creaFilaFCFS();
  filaSJF = creaFilaSJF();
  
  for(int i = 0; i < filaFCFS.length; i++)
    println(filaFCFS[i]);
  
}
