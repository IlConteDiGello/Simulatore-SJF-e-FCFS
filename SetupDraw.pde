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
boolean filaFCFSFinita = false;
boolean filaSJFFinita = false;
boolean simulazioneFinita = false;

PImage immagineCassa;
Cassa FCFS;
Cassa SJF;

Bottone bottone;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  FCFS = new Cassa(width-110, height/2 - 150, creaFilaFCFS(listaClienti), loadImage("Cassa.png"));
  FCFS.immagineCassa.resize(100, 100);
  FCFS.draw();
  bottone = new Bottone(width/8, height/8, 100, "X1");

  SJF = new Cassa(width-110, height - 150, creaFilaSJF(listaClienti), loadImage("Cassa.png"));
  SJF.immagineCassa.resize(100, 100);
  SJF.draw();

  FCFS.drawFila();
  SJF.drawFila();
}

int i = 0;

void draw() {
  background(200);

  bottone.display();

  FCFS.draw();
  SJF.draw();

  if(simulazioneFinita){
    fammivedereirisultati();
  }else{

  //
  if (millis() - tempoUltimoControllo >= tempoScansionamento) {
    if (FCFS.hasCliente())
      FCFS.scansiona();

    if (SJF.hasCliente())
      SJF.scansiona();

    tempoUltimoControllo = millis();

    if (!FCFS.hasCliente() && !SJF.hasCliente()) {
      simulazioneFinita = true;
    } else {
      tempoTotale++;
    }
  }
  }

  //
  FCFS.drawFila();
  SJF.drawFila();
  bottone.display();
}
