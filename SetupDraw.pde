/*

 IMPORTANTE: TOGLIERE NUMERI MAGICI
 
 */
Cliente[] filaFCFS;
Cliente[] filaSJF;

int tempoUltimoControllo = 0;
int tempoScansionamento = 1000;
int tempoTotale = 0;
boolean simulazioneFinita = false;

PImage immagineCassa;
Cassa FCFS;
Cassa SJF;

Bottone bottone;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  bottone = new Bottone(width/8, height/8, 100, "X1");

  FCFS = new Cassa(width/1.35, height/4, creaFilaFCFS(listaClienti), loadImage("Cassa.png"));
  FCFS.immagineCassa.resize((int)(FCFS.immagineCassa.width * 0.20), (int)(FCFS.immagineCassa.height * 0.20));

  SJF = new Cassa(width/1.35, height/1.5, creaFilaSJF(listaClienti), loadImage("Cassa.png"));
  SJF.immagineCassa.resize((int)(SJF.immagineCassa.width * 0.20), (int)(SJF.immagineCassa.height * 0.20));

  FCFS.drawFila();
  SJF.drawFila();
}

void draw() {
  background(200);

  bottone.display();

  FCFS.draw();
  text("FCFS\t tempo medio: " + FCFS.getTempoMedio(), FCFS.x, FCFS.y - 0.2*FCFS.immagineCassa.height);

  SJF.draw();
  text("SJF\t tempo medio: " + SJF.getTempoMedio(), SJF.x, SJF.y - 0.2*SJF.immagineCassa.height);

  if(simulazioneFinita){
    visualizzaRisultati();
  }
  else {
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

  FCFS.drawFila();
  SJF.drawFila();
  bottone.display();
}
