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

PImage immagineCassa;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  Cassa FCFS = new Cassa(width-110, height/2 - 150, creaFilaFCFS(listaClienti), loadImage("Cassa.png"));
  FCFS.immagineCassa.resize(100, 100);
  FCFS.draw();

  Cassa SJF = new Cassa(width-110, height - 150, creaFilaSJF(listaClienti), loadImage("Cassa.png"));
  SJF.immagineCassa.resize(100, 100);
  SJF.draw();

  FCFS.drawFila();
  SJF.drawFila();
}

int i = 0;

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
    tempoUltimoControllo = millis();
  }
  drawFileFCFS(filaFCFS);  //richiamo la funzione per
  drawFileSJF(filaSJF);
}
