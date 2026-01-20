/*

IMPORTANTE: TOGLIERE NUMERI MAGICI

*/

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



void draw() {  
  
}
