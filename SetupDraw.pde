void setup() {
  size(600, 600);


  Cliente[] listaClienti = parseInput("clienti.txt");  //genero la lista dei clienti utilizzando il Parser, che
  //genera i clienti leggendo la lista e gli assegna nome, cassa e numero di articoli

  for (int i = 0; i < listaClienti.length; i++) {  //questo ciclo serve a scrivere tutti i clienti, nome num. prodotti e cassa
    println(listaClienti[i]);
    println(i+1);
  }
  
  drawClienti();

    
}

void draw() {
  drawCassaFCFS();  //disegna la cassa che effettuerà FCFS
  drawCassaSJF();  //disegna la cassa che effettuerà SJF
}
