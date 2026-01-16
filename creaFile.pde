import java.util.ArrayList;
import java.util.Collections;

Cliente[] creaFilaFCFS (Cliente[] clientiDaSmistare) {
  ArrayList<Cliente> provvisorio = new ArrayList<>();

  for (int i = 0; i < clientiDaSmistare.length; i++)
    if (clientiDaSmistare[i].getCassaPreferita() == 0)
      provvisorio.add(clientiDaSmistare[i]);

  return provvisorio.toArray(Cliente[]::new);
}

Cliente[] creaFilaSJF (Cliente[] clientiDaSmistare) {
  ArrayList<Cliente> provvisorio = new ArrayList<>();

  for (int i = 0; i < clientiDaSmistare.length; i++)
    if (clientiDaSmistare[i].getCassaPreferita() == 1)
      provvisorio.add(clientiDaSmistare[i]);

  Collections.sort(provvisorio);

  return provvisorio.toArray(Cliente[]::new);
}
