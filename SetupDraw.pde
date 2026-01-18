Cliente[] filaFCFS;
Cliente[] filaSJF;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  for (int i = 0; i < listaClienti.length; i++)  //questo ciclo serve a scrivere tutti i clienti, nome num. prodotti e cassa
    println(listaClienti[i]);

  println("\n");
  filaFCFS = creaFilaFCFS(listaClienti);  //creo la fila dei clienti FCFS
  filaSJF = creaFilaSJF(listaClienti);  //creo la file dei clienti SJF

  //drawFileFCFS(filaFCFS);  //richiamo la funzione per
  //drawFileSJF(filaSJF);

  drawCassaFCFS();


  /*for(int i = 0; i < filaFCFS.length; i++)
   println(filaFCFS[i]);
   
   println();
   
   for(int i = 0; i < filaSJF.length; i++)
   println(filaSJF[i]);
   */
}

int i = 0;

void draw() {
  drawFileFCFS(filaFCFS); //richiamo la funzione per disegnare la fila della cassa FCFS  
  drawFileSJF(filaSJF); //funzione che disegna la fila della cassa SJF
}
