int tempoTotale=0;

void drawCassaFCFS() {
  int x = width-110;
  int y = height/2 - immagineCassa.width;
  image(immagineCassa, x, y);
}

int offsetX = 0; //assegnato valore nel setup

void drawFileFCFS(Cliente[] filaFCFS) {  //funzione che disegna la fila, viene passato per parametro la fila dell'FCFS
  int offsetXCopia = offsetX;
  for (int i = 0; i < filaFCFS.length; i++) {  //scorre tutti i clienti della fila
    //println(filaFCFS[i]);

    rect(width - offsetXCopia - 200, height/2 - 100, 50, 100);  //provvisorio
    offsetXCopia += 75;  //aumento l'offset, cosi si staccano i clienti
  }
}

void drawFileSJF(Cliente[] filaSJF) {
  int offsetXCopia = offsetX;
  for (int i = 0; i < filaSJF.length; i++) {
    //println(filaSJF[i]);

    rect(width - offsetXCopia - 200, height - 110, 50, 100);
    offsetXCopia += 75;
  }
}

void drawCassaSJF() {
  int x = width-110;
  int y = height - immagineCassa.width;
  image(immagineCassa, x, y);
}
