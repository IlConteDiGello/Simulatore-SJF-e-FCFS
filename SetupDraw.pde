/*

 IMPORTANTE: TOGLIERE NUMERI MAGICI
 
 */
Cliente[] filaFCFS;
Cliente[] filaSJF;

int iFCFS = 0;
int iSJF = 0;
int tempoUltimoControllo = 0;
int tempoScansionamento = 1000;
int tempoTotale=0;

int offsetXFCFS = 0; //assegnato valore nel setup
int offsetXSJF = 0; //
PImage immagineCassa;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  /*
  for (int i = 0; i < listaClienti.length; i++)  //questo ciclo serve a scrivere tutti i clienti, nome num. prodotti e cassa
   println(listaClienti[i]);
   
   println("\n");*/

  loadImages();

  offsetXFCFS = immagineCassa.width;
  offsetXSJF = immagineCassa.width;

  filaFCFS = creaFilaFCFS(listaClienti);  //creo la fila dei clienti FCFS
  filaSJF = creaFilaSJF(listaClienti);  //creo la file dei clienti SJF
}

/*
  logica scorrimento fila:
 
 
 
 */
void draw() {
  background(200);
  
  drawBottoni();
  
  drawCassaFCFS();
  drawCassaSJF();

  if (millis() - tempoUltimoControllo >= tempoScansionamento) {
    filaFCFS[iFCFS].numArticoli--;
    println(filaFCFS[iFCFS].numArticoli);
    if (filaFCFS[iFCFS].numArticoli <= 0) {
      offsetXFCFS -= 75;
      iFCFS++;
    }
    
    filaSJF[iSJF].numArticoli--;
    println(filaSJF[iSJF].numArticoli);
    if (filaSJF[iSJF].numArticoli <= 0) {
      offsetXSJF -= 75;
      iSJF++;
    }
    tempoTotale++;
    tempoUltimoControllo = millis();
  }
  drawFileFCFS(filaFCFS);  //richiamo la funzione per
  drawFileSJF(filaSJF);
}
