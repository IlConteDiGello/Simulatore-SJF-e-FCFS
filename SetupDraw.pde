void setup() {
  size(600, 600);


  Cliente[] listaClienti = parseInput("clienti.txt");
  Cliente[] filaFCFS, filaSJF;

  for (int i = 0; i < listaClienti.length; i++) {  //questo ciclo serve a scrivere tutti i clienti, nome num. prodotti e cassa
    println(listaClienti[i]);
  }
  
  println();
  
  filaFCFS = creaFilaFCFS(listaClienti);
  filaSJF = creaFilaSJF(listaClienti);
  
  for(int i = 0; i < filaFCFS.length; i++)
    println(filaFCFS[i]);
  
  println();
    
  for(int i = 0; i < filaSJF.length; i++)
    println(filaSJF[i]);
  
}
