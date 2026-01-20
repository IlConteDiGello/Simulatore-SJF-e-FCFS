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
Cassa FCFS;
Cassa SJF;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  FCFS = new Cassa(width-110, height/2 - 150, creaFilaFCFS(listaClienti), loadImage("Cassa.png"));
  FCFS.immagineCassa.resize(100, 100);
  FCFS.draw();

  SJF = new Cassa(width-110, height - 150, creaFilaSJF(listaClienti), loadImage("Cassa.png"));
  SJF.immagineCassa.resize(100, 100);
  SJF.draw();

  FCFS.drawFila();
  SJF.drawFila();
}

int i = 0;

void draw() {  
  background(200);
  
  drawBottoni();
  
  FCFS.draw();
  SJF.draw();

  if (millis() - tempoUltimoControllo >= tempoScansionamento) {
    FCFS.scansiona();
    SJF.scansiona();

    tempoUltimoControllo = millis();
  }

  FCFS.drawFila();
  SJF.drawFila();
}
