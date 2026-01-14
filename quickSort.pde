import java.util.ArrayList;

void creaFileOrdinate(Cliente[] clientiDaSmistare, Cliente[] filaFCFS, Cliente[] filaSJF) {
  
  ArrayList<Cliente> provvisorioFCFS;
  ArrayList<Cliente> provvisorioSJF;
  
  for(i = 0; i < clientiDaSmistare.length; i++){    
    if (clientiDaSmistare[i].getCassaPreferita() == 0)
      provvisorioFCFS.add(clientiDaSmistare[i]);
    else if (lientiDaSmistare[i].getCassaPreferita() == 1)
      provvisorioSJF.add(clientiDaSmistare[i]);
  }
  
  provvisiorioSJF.sort(Comparator<Cliente>);
  
  filaFCFS = provvisorioFCFS.toArray(Cliente[]::new);
  filaSJF = provvisorioSJF.toArray(Cliente[]::new);
      
  quickSort(filaSJF);
}

void quickSort (Cliente[] filaDaOrdinare) {
    //https://en.wikipedia.org/wiki/Quicksort#Algorithm
    
    if (filaDaOrdinare.length < 2)
      return;
      
    
}
