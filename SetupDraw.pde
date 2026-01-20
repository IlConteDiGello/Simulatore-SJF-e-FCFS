/*

 IMPORTANTE: TOGLIERE NUMERI MAGICI
 
 */
Cliente[] filaFCFS;
Cliente[] filaSJF;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  /*
  for (int i = 0; i < listaClienti.length; i++)  //questo ciclo serve a scrivere tutti i clienti, nome num. prodotti e cassa
   println(listaClienti[i]);
   
   println("\n");*/
   
   loadImages();

   int offsetX = immagineCassa.width; //provvisorio

  filaFCFS = creaFilaFCFS(listaClienti);  //creo la fila dei clienti FCFS
  filaSJF = creaFilaSJF(listaClienti);  //creo la file dei clienti SJF
}

int i = 0;
int tempoUltimoControllo = 0;
int tempoScansionamento = 1000;
/*
  logica scorrimento fila:
 
 
 
 */
void draw() {
  drawCassaFCFS();
  drawCassaSJF();
  if (millis() - tempoUltimoControllo >= tempoScansionamento) {
    filaFCFS[i].numArticoli--;
    println(filaFCFS[i].numArticoli);
    if (filaFCFS[i].numArticoli <= 0) {
      offsetX -= 75;
      i++;
    }
    tempoUltimoControllo = millis();
  }
  drawFileFCFS(filaFCFS);  //richiamo la funzione per
  drawFileSJF(filaSJF);
}
