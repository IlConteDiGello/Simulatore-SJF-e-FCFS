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

int offsetXFCFS = 0; //assegnato valore nel setup
int offsetXSJF = 0; //
PImage immagineCassa;

Bottone bottone;

void setup() {
  size(600, 600);
  frameRate(60);

  Cliente[] listaClienti = parseInput("clienti.txt");

  bottone = new Bottone(width/8, height/8, 100, "X1");

  loadImages();

  offsetXFCFS = immagineCassa.width;
  offsetXSJF = immagineCassa.width;

  filaFCFS = creaFilaFCFS(listaClienti);
  filaSJF = creaFilaSJF(listaClienti);
}

void draw() {
  background(200);
  //
  drawCassaFCFS();
  drawCassaSJF();

  //
  if (millis() - tempoUltimoControllo >= tempoScansionamento) {
    //
    if (iFCFS < filaFCFS.length) {
      if (filaFCFS[iFCFS].numArticoli <= 0) {
        offsetXFCFS -= 75;
        iFCFS++;
      } else {
        filaFCFS[iFCFS].numArticoli--;
      }
    } else if (!filaFCFSFinita) {
      println("fila FCFS finita!!");
      filaFCFSFinita = true;
    }
    //
    if (iSJF < filaSJF.length) {
      if (filaSJF[iSJF].numArticoli <= 0) {
        offsetXSJF -= 75;
        iSJF++;
      } else {
        filaSJF[iSJF].numArticoli--;
      }
    } else if (!filaSJFFinita) {
      println("fila SJF finita!!");
      filaSJFFinita = true;
    }
    //
    if (iFCFS < filaFCFS.length || iSJF < filaSJF.length) {
      tempoTotale++;
    }
    //
    tempoUltimoControllo = millis();
  }
  //
  drawFileFCFS(filaFCFS);
  drawFileSJF(filaSJF);
  bottone.display();
}
