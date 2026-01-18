int tempoTotale=0;
class Cassa {
}

void drawCassaFCFS() {
  rect(width-110, height/2 - 150, 50, 100);
  rect(width-160, height/2 - 100, 150, 100);
}

void drawFileFCFS(Cliente[] filaFCFS) {  //funzione che disegna la fila, viene passato per parametro la fila dell'FCFS
  int offsetX = 75; //provvisorio
  for (int i = 0; i < filaFCFS.length; i++) {  //scorre tutti i clienti della fila
    println(filaFCFS[i]);

    rect(width - 200 - offsetX, height/2 - 100, 50, 100);  //provvisorio
    offsetX += 75;  //aumento l'offset, cosi si staccano i clienti
  }
}

void drawFileSJF(Cliente[] filaSJF) {
  int offsetX = 75; //provvisorio
  for (int i = 0; i < filaSJF.length; i++) {
    println(filaSJF[i]);

    rect(width - 200 - offsetX, height - 110, 50, 100);
    offsetX += 75;
  }
}

void drawCassaSJF() {
  rect(width-110, height - 150, 50, 100);
  rect(width-160, height - 100, 150, 100);
}
